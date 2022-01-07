
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sntp_dbg (char*) ;
 int sntp_dosend () ;

__attribute__((used)) static void on_timeout (void *arg)
{
  (void)arg;
  sntp_dbg("sntp: timer\n");
  sntp_dosend ();
}
