
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int frozen; } ;
struct TYPE_4__ {TYPE_3__* hashp; } ;
typedef TYPE_1__ HASH_SEQ_STATUS ;


 int deregister_seq_scan (TYPE_3__*) ;

void
hash_seq_term(HASH_SEQ_STATUS *status)
{
 if (!status->hashp->frozen)
  deregister_seq_scan(status->hashp);
}
