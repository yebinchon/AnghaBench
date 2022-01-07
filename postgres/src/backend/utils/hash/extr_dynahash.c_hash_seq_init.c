
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * curEntry; scalar_t__ curBucket; TYPE_1__* hashp; } ;
struct TYPE_6__ {int frozen; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ HASH_SEQ_STATUS ;


 int register_seq_scan (TYPE_1__*) ;

void
hash_seq_init(HASH_SEQ_STATUS *status, HTAB *hashp)
{
 status->hashp = hashp;
 status->curBucket = 0;
 status->curEntry = ((void*)0);
 if (!hashp->frozen)
  register_seq_scan(hashp);
}
