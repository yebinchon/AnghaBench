
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
 char const* pg_TZDIR () ;
 int strcat (char*,char const*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

int
pg_open_tzfile(const char *name, char *canonname)
{
 char fullname[MAXPGPATH];

 if (canonname)
  strlcpy(canonname, name, TZ_STRLEN_MAX + 1);

 strlcpy(fullname, pg_TZDIR(), sizeof(fullname));
 if (strlen(fullname) + 1 + strlen(name) >= MAXPGPATH)
  return -1;
 strcat(fullname, "/");
 strcat(fullname, name);

 return open(fullname, O_RDONLY | PG_BINARY, 0);
}
