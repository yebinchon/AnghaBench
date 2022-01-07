
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ version; int lock; } ;
typedef TYPE_1__ nfs41_rpc_clnt ;
typedef int bool_t ;


 int AcquireSRWLockExclusive (int *) ;
 int ReleaseSRWLockExclusive (int *) ;

__attribute__((used)) static bool_t rpc_should_retry(nfs41_rpc_clnt *rpc, uint32_t version)
{
    bool_t status = 0;
    AcquireSRWLockExclusive(&rpc->lock);
    if (rpc->version > version)
        status = 1;
    ReleaseSRWLockExclusive(&rpc->lock);
    return status;
}
