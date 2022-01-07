
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef int FILE ;


 int MAXPGPATH ;
 int PG_BACKEND_VERSIONSTR ;
 int _ (char*) ;
 int argv0 ;
 int canonicalize_path (char*) ;
 char* exec_path ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 char* find_other_exec_or_die (int ,char*,int ) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int pclose (int *) ;
 char* pg_config ;
 char* pg_data ;
 char* pg_strdup (char*) ;
 int pg_strip_crlf (char*) ;
 char* pgdata_opt ;
 int * popen (char*,char*) ;
 char* post_opts ;
 int progname ;
 int snprintf (char*,int,char*,char*,...) ;
 int write_stderr (int ,int ,char*) ;

__attribute__((used)) static void
adjust_data_dir(void)
{
 char cmd[MAXPGPATH],
    filename[MAXPGPATH],
      *my_exec_path;
 FILE *fd;


 if (pg_config == ((void*)0))
  return;


 snprintf(filename, sizeof(filename), "%s/postgresql.conf", pg_config);
 if ((fd = fopen(filename, "r")) == ((void*)0))
  return;
 fclose(fd);


 snprintf(filename, sizeof(filename), "%s/PG_VERSION", pg_config);
 if ((fd = fopen(filename, "r")) != ((void*)0))
 {
  fclose(fd);
  return;
 }




 if (exec_path == ((void*)0))
  my_exec_path = find_other_exec_or_die(argv0, "postgres", PG_BACKEND_VERSIONSTR);
 else
  my_exec_path = pg_strdup(exec_path);


 snprintf(cmd, MAXPGPATH, "\"%s\" -C data_directory %s%s",
    my_exec_path,
    pgdata_opt ? pgdata_opt : "",
    post_opts ? post_opts : "");

 fd = popen(cmd, "r");
 if (fd == ((void*)0) || fgets(filename, sizeof(filename), fd) == ((void*)0))
 {
  write_stderr(_("%s: could not determine the data directory using command \"%s\"\n"), progname, cmd);
  exit(1);
 }
 pclose(fd);
 free(my_exec_path);


 (void) pg_strip_crlf(filename);

 free(pg_data);
 pg_data = pg_strdup(filename);
 canonicalize_path(pg_data);
}
