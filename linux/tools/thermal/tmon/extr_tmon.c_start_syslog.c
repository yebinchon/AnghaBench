
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_CONS ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_LOCAL0 ;
 int LOG_NDELAY ;
 int LOG_NOTICE ;
 int LOG_PID ;
 int LOG_UPTO (int ) ;
 scalar_t__ debug_on ;
 int getuid () ;
 int openlog (char*,int,int ) ;
 int setlogmask (int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void start_syslog(void)
{
 if (debug_on)
  setlogmask(LOG_UPTO(LOG_DEBUG));
 else
  setlogmask(LOG_UPTO(LOG_ERR));
 openlog("tmon.log", LOG_CONS | LOG_PID | LOG_NDELAY, LOG_LOCAL0);
 syslog(LOG_NOTICE, "TMON started by User %d", getuid());
}
