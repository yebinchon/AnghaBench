
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_io_desc {void* piod_offs; void* piod_addr; int piod_len; int piod_op; } ;


 int PIOD_READ_D ;
 int PTRACE_PEEKDATA ;
 int PT_IO ;
 int ZLOG_SYSERROR ;
 scalar_t__ errno ;
 scalar_t__ ptrace (int ,int ,void*,int ) ;
 int traced_pid ;
 int zlog (int ,char*,int ) ;

int fpm_trace_get_long(long addr, long *data)
{
 errno = 0;
 *data = ptrace(PTRACE_PEEKDATA, traced_pid, (void *) addr, 0);
 if (errno) {
  zlog(ZLOG_SYSERROR, "failed to ptrace(PEEKDATA) pid %d", traced_pid);
  return -1;
 }

 return 0;
}
