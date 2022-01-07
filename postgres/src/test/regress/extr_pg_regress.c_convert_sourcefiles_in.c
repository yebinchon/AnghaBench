
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int line ;
typedef int FILE ;


 char* DLSUFFIX ;
 int MAXPGPATH ;
 int S_ISDIR (int ) ;
 char* _ (char*) ;
 scalar_t__ directory_exists (char*) ;
 char* dlpath ;
 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*,...) ;
 int fputs (char*,int *) ;
 char* inputdir ;
 int make_directory (char*) ;
 char* outputdir ;
 char** pgfnames (char*) ;
 int pgfnames_cleanup (char**) ;
 char* progname ;
 int replace_string (char*,char*,char*) ;
 int rmtree (char*,int) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
convert_sourcefiles_in(const char *source_subdir, const char *dest_dir, const char *dest_subdir, const char *suffix)
{
 char testtablespace[MAXPGPATH];
 char indir[MAXPGPATH];
 struct stat st;
 int ret;
 char **name;
 char **names;
 int count = 0;

 snprintf(indir, MAXPGPATH, "%s/%s", inputdir, source_subdir);


 ret = stat(indir, &st);
 if (ret != 0 || !S_ISDIR(st.st_mode))
 {




  return;
 }

 names = pgfnames(indir);
 if (!names)

  exit(2);

 snprintf(testtablespace, MAXPGPATH, "%s/testtablespace", outputdir);
 for (name = names; *name; name++)
 {
  char srcfile[MAXPGPATH];
  char destfile[MAXPGPATH];
  char prefix[MAXPGPATH];
  FILE *infile,
       *outfile;
  char line[1024];


  if (strlen(*name) < 8)
   continue;
  if (strcmp(*name + strlen(*name) - 7, ".source") != 0)
   continue;

  count++;


  snprintf(prefix, strlen(*name) - 6, "%s", *name);
  snprintf(srcfile, MAXPGPATH, "%s/%s", indir, *name);
  snprintf(destfile, MAXPGPATH, "%s/%s/%s.%s", dest_dir, dest_subdir,
     prefix, suffix);

  infile = fopen(srcfile, "r");
  if (!infile)
  {
   fprintf(stderr, _("%s: could not open file \"%s\" for reading: %s\n"),
     progname, srcfile, strerror(errno));
   exit(2);
  }
  outfile = fopen(destfile, "w");
  if (!outfile)
  {
   fprintf(stderr, _("%s: could not open file \"%s\" for writing: %s\n"),
     progname, destfile, strerror(errno));
   exit(2);
  }
  while (fgets(line, sizeof(line), infile))
  {
   replace_string(line, "@abs_srcdir@", inputdir);
   replace_string(line, "@abs_builddir@", outputdir);
   replace_string(line, "@testtablespace@", testtablespace);
   replace_string(line, "@libdir@", dlpath);
   replace_string(line, "@DLSUFFIX@", DLSUFFIX);
   fputs(line, outfile);
  }
  fclose(infile);
  fclose(outfile);
 }





 if (count <= 0)
 {
  fprintf(stderr, _("%s: no *.source files found in \"%s\"\n"),
    progname, indir);
  exit(2);
 }

 pgfnames_cleanup(names);
}
