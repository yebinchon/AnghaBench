
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rseq {int dummy; } ;
typedef int sigset_t ;


 int RSEQ_FLAG_UNREGISTER ;
 int RSEQ_SIG ;
 int __rseq_abi ;
 int __rseq_refcount ;
 int rseq_ownership ;
 int signal_off_save (int *) ;
 int signal_restore (int ) ;
 int sys_rseq (int *,int,int ,int ) ;

int rseq_unregister_current_thread(void)
{
 int rc, ret = 0;
 sigset_t oldset;

 if (!rseq_ownership)
  return 0;
 signal_off_save(&oldset);
 if (!__rseq_refcount) {
  ret = -1;
  goto end;
 }
 if (--__rseq_refcount)
  goto end;
 rc = sys_rseq(&__rseq_abi, sizeof(struct rseq),
        RSEQ_FLAG_UNREGISTER, RSEQ_SIG);
 if (!rc)
  goto end;
 __rseq_refcount = 1;
 ret = -1;
end:
 signal_restore(oldset);
 return ret;
}
