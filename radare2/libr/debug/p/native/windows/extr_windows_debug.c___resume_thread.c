
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int ResumeThread (int ) ;
 int r_sys_perror (char*) ;

__attribute__((used)) static int __resume_thread(HANDLE th, int bits) {
 int ret;

  if ((ret = ResumeThread (th)) == -1) {
   r_sys_perror ("__resume_thread/ResumeThread");
  }





 return ret;
}
