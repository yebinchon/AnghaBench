
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int SuspendThread (int ) ;
 int r_sys_perror (char*) ;

__attribute__((used)) static int __suspend_thread(HANDLE th, int bits) {
 int ret;

  if ((ret = SuspendThread (th)) == -1) {
   r_sys_perror ("__suspend_thread/SuspendThread");
  }





 return ret;
}
