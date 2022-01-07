
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ctx ;
struct TYPE_4__ {int ContextFlags; int member_0; } ;
typedef int HANDLE ;
typedef TYPE_1__ CONTEXT ;


 int CONTEXT_ALL ;
 scalar_t__ GetThreadContext (int ,TYPE_1__*) ;
 scalar_t__ __is_proc_alive (int ) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int r_sys_perror (char*) ;

__attribute__((used)) static int __get_thread_context(HANDLE th, ut8 *buf, int size, int bits) {
 int ret = 0;
 CONTEXT ctx = {0};

 ctx.ContextFlags = CONTEXT_ALL;
 if (GetThreadContext (th, &ctx)) {
  if (size > sizeof (ctx)) {
   size = sizeof (ctx);
  }
  memcpy (buf, &ctx, size);
  ret = size;
 } else {
  if (__is_proc_alive (th)) {
   r_sys_perror ("__get_thread_context/GetThreadContext");
  }
 }
 return ret;
}
