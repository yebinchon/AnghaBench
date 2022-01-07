
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rseq {int dummy; } ;
typedef int sigset_t ;
struct TYPE_3__ {int cpu_id; } ;


 scalar_t__ EBUSY ;
 int RSEQ_CPU_ID_REGISTRATION_FAILED ;
 int RSEQ_SIG ;
 scalar_t__ UINT_MAX ;
 TYPE_1__ __rseq_abi ;
 scalar_t__ __rseq_refcount ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ rseq_current_cpu_raw () ;
 int rseq_ownership ;
 int signal_off_save (int *) ;
 int signal_restore (int ) ;
 int sys_rseq (TYPE_1__*,int,int ,int ) ;

int rseq_register_current_thread(void)
{
 int rc, ret = 0;
 sigset_t oldset;

 if (!rseq_ownership)
  return 0;
 signal_off_save(&oldset);
 if (__rseq_refcount == UINT_MAX) {
  ret = -1;
  goto end;
 }
 if (__rseq_refcount++)
  goto end;
 rc = sys_rseq(&__rseq_abi, sizeof(struct rseq), 0, RSEQ_SIG);
 if (!rc) {
  assert(rseq_current_cpu_raw() >= 0);
  goto end;
 }
 if (errno != EBUSY)
  __rseq_abi.cpu_id = RSEQ_CPU_ID_REGISTRATION_FAILED;
 ret = -1;
 __rseq_refcount--;
end:
 signal_restore(oldset);
 return ret;
}
