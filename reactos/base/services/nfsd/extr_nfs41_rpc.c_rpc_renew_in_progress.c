
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_recovery; int lock; int cond; } ;
typedef TYPE_1__ nfs41_rpc_clnt ;
typedef int bool_t ;


 int AcquireSRWLockExclusive (int *) ;
 int FALSE ;
 int ReleaseSRWLockExclusive (int *) ;
 int SetEvent (int ) ;
 int dprintf (int,char*,int) ;

__attribute__((used)) static bool_t rpc_renew_in_progress(nfs41_rpc_clnt *rpc, int *value)
{
    bool_t status = FALSE;
    AcquireSRWLockExclusive(&rpc->lock);
    if (value) {
        dprintf(1, "nfs41_rpc_renew_in_progress: setting value %d\n", *value);
        rpc->in_recovery = *value;
        if (!rpc->in_recovery)
            SetEvent(rpc->cond);
    } else {
        status = rpc->in_recovery;
        dprintf(1, "nfs41_rpc_renew_in_progress: returning value %d\n", status);
    }
    ReleaseSRWLockExclusive(&rpc->lock);
    return status;
}
