
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOGROTATE_SIGNAL_FILE ;
 int unlink (int ) ;

void
RemoveLogrotateSignalFiles(void)
{
 unlink(LOGROTATE_SIGNAL_FILE);
}
