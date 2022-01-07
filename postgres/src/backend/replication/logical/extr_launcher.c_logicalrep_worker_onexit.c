
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int ApplyLauncherWakeup () ;
 int logicalrep_worker_detach () ;
 int walrcv_disconnect (scalar_t__) ;
 scalar_t__ wrconn ;

__attribute__((used)) static void
logicalrep_worker_onexit(int code, Datum arg)
{

 if (wrconn)
  walrcv_disconnect(wrconn);

 logicalrep_worker_detach();

 ApplyLauncherWakeup();
}
