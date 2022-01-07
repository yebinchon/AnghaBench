
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fullname ;


 int MAXPGPATH ;
 int O_RDONLY ;
 int PG_BINARY ;
 int TZ_STRLEN_MAX ;
 int open (char*,int,int ) ;
 char* pg_TZDIR () ;
 int scan_directory_ci (char*,char const*,int,char*,int) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char const*) ;

int
pg_open_tzfile(const char *name, char *canonname)
{
 const char *fname;
 char fullname[MAXPGPATH];
 int fullnamelen;
 int orignamelen;


 strlcpy(fullname, pg_TZDIR(), sizeof(fullname));
 orignamelen = fullnamelen = strlen(fullname);

 if (fullnamelen + 1 + strlen(name) >= MAXPGPATH)
  return -1;
 if (canonname == ((void*)0))
 {
  int result;

  fullname[fullnamelen] = '/';

  strcpy(fullname + fullnamelen + 1, name);
  result = open(fullname, O_RDONLY | PG_BINARY, 0);
  if (result >= 0)
   return result;

  fullname[fullnamelen] = '\0';
 }





 fname = name;
 for (;;)
 {
  const char *slashptr;
  int fnamelen;

  slashptr = strchr(fname, '/');
  if (slashptr)
   fnamelen = slashptr - fname;
  else
   fnamelen = strlen(fname);
  if (!scan_directory_ci(fullname, fname, fnamelen,
          fullname + fullnamelen + 1,
          MAXPGPATH - fullnamelen - 1))
   return -1;
  fullname[fullnamelen++] = '/';
  fullnamelen += strlen(fullname + fullnamelen);
  if (slashptr)
   fname = slashptr + 1;
  else
   break;
 }

 if (canonname)
  strlcpy(canonname, fullname + orignamelen + 1, TZ_STRLEN_MAX + 1);

 return open(fullname, O_RDONLY | PG_BINARY, 0);
}
