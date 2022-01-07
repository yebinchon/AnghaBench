
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int LOGROTATE_SIGNAL_FILE ;
 scalar_t__ stat (int ,struct stat*) ;

bool
CheckLogrotateSignal(void)
{
 struct stat stat_buf;

 if (stat(LOGROTATE_SIGNAL_FILE, &stat_buf) == 0)
  return 1;

 return 0;
}
