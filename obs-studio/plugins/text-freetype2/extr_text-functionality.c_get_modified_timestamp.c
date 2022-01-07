
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; } ;


 scalar_t__ os_stat (char*,struct stat*) ;

time_t get_modified_timestamp(char *filename)
{
 struct stat stats;



 if (os_stat(filename, &stats) != 0)
  return -1;

 return stats.st_mtime;
}
