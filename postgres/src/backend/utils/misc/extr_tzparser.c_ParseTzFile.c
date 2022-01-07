
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tzbuf ;
typedef int tzEntry ;
typedef int file_path ;
typedef int FILE ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 int * AllocateFile (char*,char*) ;
 int ENOENT ;
 int FreeDir (int *) ;
 int FreeFile (int *) ;
 int GUC_check_errhint (char*,int ) ;
 int GUC_check_errmsg (char*,char const*,...) ;
 int MAXPGPATH ;
 int WHITESPACE ;
 int addToArray (int **,int*,int,int *,int) ;
 int errno ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int get_share_path (int ,char*) ;
 int isalpha (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int my_exec_path ;
 scalar_t__ pg_strncasecmp (char*,char*,int) ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,char*,...) ;
 int splitTzLine (char const*,int,char*,int *) ;
 int strlen (char*) ;
 char* strtok (char*,int ) ;
 int validateTzEntry (int *) ;

__attribute__((used)) static int
ParseTzFile(const char *filename, int depth,
   tzEntry **base, int *arraysize, int n)
{
 char share_path[MAXPGPATH];
 char file_path[MAXPGPATH];
 FILE *tzFile;
 char tzbuf[1024];
 char *line;
 tzEntry tzentry;
 int lineno = 0;
 bool override = 0;
 const char *p;







 for (p = filename; *p; p++)
 {
  if (!isalpha((unsigned char) *p))
  {

   if (depth > 0)
    GUC_check_errmsg("invalid time zone file name \"%s\"",
         filename);
   return -1;
  }
 }






 if (depth > 3)
 {
  GUC_check_errmsg("time zone file recursion limit exceeded in file \"%s\"",
       filename);
  return -1;
 }

 get_share_path(my_exec_path, share_path);
 snprintf(file_path, sizeof(file_path), "%s/timezonesets/%s",
    share_path, filename);
 tzFile = AllocateFile(file_path, "r");
 if (!tzFile)
 {






  int save_errno = errno;
  DIR *tzdir;

  snprintf(file_path, sizeof(file_path), "%s/timezonesets",
     share_path);
  tzdir = AllocateDir(file_path);
  if (tzdir == ((void*)0))
  {
   GUC_check_errmsg("could not open directory \"%s\": %m",
        file_path);
   GUC_check_errhint("This may indicate an incomplete PostgreSQL installation, or that the file \"%s\" has been moved away from its proper location.",
         my_exec_path);
   return -1;
  }
  FreeDir(tzdir);
  errno = save_errno;





  if (errno != ENOENT || depth > 0)
   GUC_check_errmsg("could not read time zone file \"%s\": %m",
        filename);

  return -1;
 }

 while (!feof(tzFile))
 {
  lineno++;
  if (fgets(tzbuf, sizeof(tzbuf), tzFile) == ((void*)0))
  {
   if (ferror(tzFile))
   {
    GUC_check_errmsg("could not read time zone file \"%s\": %m",
         filename);
    return -1;
   }

   break;
  }
  if (strlen(tzbuf) == sizeof(tzbuf) - 1)
  {

   GUC_check_errmsg("line is too long in time zone file \"%s\", line %d",
        filename, lineno);
   return -1;
  }


  line = tzbuf;
  while (*line && isspace((unsigned char) *line))
   line++;

  if (*line == '\0')
   continue;
  if (*line == '#')
   continue;

  if (pg_strncasecmp(line, "@INCLUDE", strlen("@INCLUDE")) == 0)
  {

   char *includeFile = pstrdup(line + strlen("@INCLUDE"));

   includeFile = strtok(includeFile, WHITESPACE);
   if (!includeFile || !*includeFile)
   {
    GUC_check_errmsg("@INCLUDE without file name in time zone file \"%s\", line %d",
         filename, lineno);
    return -1;
   }
   n = ParseTzFile(includeFile, depth + 1,
       base, arraysize, n);
   if (n < 0)
    return -1;
   continue;
  }

  if (pg_strncasecmp(line, "@OVERRIDE", strlen("@OVERRIDE")) == 0)
  {
   override = 1;
   continue;
  }

  if (!splitTzLine(filename, lineno, line, &tzentry))
   return -1;
  if (!validateTzEntry(&tzentry))
   return -1;
  n = addToArray(base, arraysize, n, &tzentry, override);
  if (n < 0)
   return -1;
 }

 FreeFile(tzFile);

 return n;
}
