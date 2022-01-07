
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int path ;


 char* EXE_EXT ;
 int MAXPGPATH ;
 int R_OK ;
 int S_IRUSR ;
 int S_ISREG (int) ;
 int S_IXUSR ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 int errno ;
 int pg_fatal (char*,char*,...) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;
 int strlcat (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
validate_exec(const char *dir, const char *cmdName)
{
 char path[MAXPGPATH];
 struct stat buf;

 snprintf(path, sizeof(path), "%s/%s", dir, cmdName);
 if (stat(path, &buf) < 0)
  pg_fatal("check for \"%s\" failed: %s\n",
     path, strerror(errno));
 else if (!S_ISREG(buf.st_mode))
  pg_fatal("check for \"%s\" failed: not a regular file\n",
     path);






 if (access(path, R_OK) != 0)



  pg_fatal("check for \"%s\" failed: cannot read file (permission denied)\n",
     path);


 if (access(path, X_OK) != 0)



  pg_fatal("check for \"%s\" failed: cannot execute (permission denied)\n",
     path);
}
