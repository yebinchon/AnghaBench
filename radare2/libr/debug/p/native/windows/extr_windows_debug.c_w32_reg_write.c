
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int bits; int tid; } ;
typedef TYPE_1__ RDebug ;
typedef int HANDLE ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 int FALSE ;
 int R_REG_TYPE_DRX ;
 int R_SYS_BITS_64 ;
 int THREAD_QUERY_INFORMATION ;
 int THREAD_SET_CONTEXT ;
 int THREAD_SUSPEND_RESUME ;
 int __is_thread_alive (TYPE_1__*,int ) ;
 int __resume_thread (int ,int ) ;
 int __set_thread_context (int ,int const*,int,int ) ;
 int __suspend_thread (int ,int ) ;
 int __transfer_drx (TYPE_1__*,int const*) ;
 int r_sys_perror (char*) ;
 int w32_OpenThread (int,int ,int ) ;

int w32_reg_write(RDebug *dbg, int type, const ut8 *buf, int size) {
 DWORD flags = THREAD_SUSPEND_RESUME | THREAD_SET_CONTEXT;
 if (dbg->bits == R_SYS_BITS_64) {
  flags |= THREAD_QUERY_INFORMATION;
 }
 HANDLE th = w32_OpenThread (flags, FALSE, dbg->tid);
 if (!th) {
  r_sys_perror ("w32_reg_write/OpenThread");
  return 0;
 }
 bool alive = __is_thread_alive (dbg, dbg->tid);

 if (alive && __suspend_thread (th, dbg->bits) == -1) {
  CloseHandle (th);
  return 0;
 }
 if (type == R_REG_TYPE_DRX) {
  __transfer_drx (dbg, buf);
 }
 bool ret = __set_thread_context (th, buf, size, dbg->bits);

 if (alive && __resume_thread (th, dbg->bits) == -1) {
  ret = 0;
 }
 CloseHandle (th);
 return ret;
}
