
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file ;
typedef int FILE ;


 int MAXPGPATH ;
 char* _ (char*) ;
 char* difffilename ;
 int directory_exists (char*) ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 void* fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 void* logfile ;
 char* logfilename ;
 int make_directory (char*) ;
 char* outputdir ;
 char* pg_strdup (char*) ;
 char* progname ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
open_result_files(void)
{
 char file[MAXPGPATH];
 FILE *difffile;


 if (!directory_exists(outputdir))
  make_directory(outputdir);


 snprintf(file, sizeof(file), "%s/regression.out", outputdir);
 logfilename = pg_strdup(file);
 logfile = fopen(logfilename, "w");
 if (!logfile)
 {
  fprintf(stderr, _("%s: could not open file \"%s\" for writing: %s\n"),
    progname, logfilename, strerror(errno));
  exit(2);
 }


 snprintf(file, sizeof(file), "%s/regression.diffs", outputdir);
 difffilename = pg_strdup(file);
 difffile = fopen(difffilename, "w");
 if (!difffile)
 {
  fprintf(stderr, _("%s: could not open file \"%s\" for writing: %s\n"),
    progname, difffilename, strerror(errno));
  exit(2);
 }

 fclose(difffile);


 snprintf(file, sizeof(file), "%s/results", outputdir);
 if (!directory_exists(file))
  make_directory(file);
}
