
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int breaked; } ;
typedef int RThreadFunctionRet ;
typedef TYPE_1__ RThread ;


 int R_TH_STOP ;
 int eprintf (char*,char const,char) ;
 int r_sys_usleep (int) ;

__attribute__((used)) static RThreadFunctionRet loading_thread(RThread *th) {
 const char *tok = "\\|/-";
 int i = 0;
 if (th) {
  while (!th->breaked) {
   eprintf ("%c] Loading..%c     \r[", tok[i%4], "."[i%2]);
   r_sys_usleep (100000);
   i++;
  }
 }
 return R_TH_STOP;
}
