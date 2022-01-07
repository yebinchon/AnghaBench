
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISDIR (int ) ;
 int archiveLocation ;
 int exit (int) ;
 int pg_log_error (char*,int ) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static void
Initialize(void)
{




 struct stat stat_buf;

 if (stat(archiveLocation, &stat_buf) != 0 ||
  !S_ISDIR(stat_buf.st_mode))
 {
  pg_log_error("archive location \"%s\" does not exist",
      archiveLocation);
  exit(2);
 }
}
