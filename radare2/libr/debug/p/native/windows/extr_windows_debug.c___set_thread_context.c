
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ctx ;
struct TYPE_4__ {int member_0; } ;
typedef int HANDLE ;
typedef TYPE_1__ CONTEXT ;


 int R_MIN (int,int) ;
 int SetThreadContext (int ,TYPE_1__*) ;
 int memcpy (TYPE_1__*,int const*,int) ;
 int r_sys_perror (char*) ;

__attribute__((used)) static int __set_thread_context(HANDLE th, const ut8 *buf, int size, int bits) {
 bool ret;
 CONTEXT ctx = {0};
 size = R_MIN (size, sizeof (ctx));
 memcpy (&ctx, buf, size);
 if(!(ret = SetThreadContext (th, &ctx))) {
  r_sys_perror ("__set_thread_context/SetThreadContext");
 }
 return ret;
}
