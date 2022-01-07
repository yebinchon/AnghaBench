
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subDirName ;
struct stat {int st_mode; } ;


 int MAXPGPATH ;
 int PG_FATAL ;
 int S_ISDIR (int ) ;
 int errno ;
 int report_status (int ,char*,char*,...) ;
 int snprintf (char*,int,char*,char const*,char*,char const*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;

__attribute__((used)) static void
check_single_dir(const char *pg_data, const char *subdir)
{
 struct stat statBuf;
 char subDirName[MAXPGPATH];

 snprintf(subDirName, sizeof(subDirName), "%s%s%s", pg_data,

    *subdir ? "/" : "",
    subdir);

 if (stat(subDirName, &statBuf) != 0)
  report_status(PG_FATAL, "check for \"%s\" failed: %s\n",
       subDirName, strerror(errno));
 else if (!S_ISDIR(statBuf.st_mode))
  report_status(PG_FATAL, "\"%s\" is not a directory\n",
       subDirName);
}
