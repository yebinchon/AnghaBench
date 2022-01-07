
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int FALLBACK_PROMOTE_SIGNAL_FILE ;
 int PROMOTE_SIGNAL_FILE ;
 scalar_t__ stat (int ,struct stat*) ;

bool
CheckPromoteSignal(void)
{
 struct stat stat_buf;

 if (stat(PROMOTE_SIGNAL_FILE, &stat_buf) == 0 ||
  stat(FALLBACK_PROMOTE_SIGNAL_FILE, &stat_buf) == 0)
  return 1;

 return 0;
}
