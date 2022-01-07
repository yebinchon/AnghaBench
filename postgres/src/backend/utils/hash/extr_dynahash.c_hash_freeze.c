
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frozen; int tabname; scalar_t__ isshared; } ;
typedef TYPE_1__ HTAB ;


 int ERROR ;
 int elog (int ,char*,int ) ;
 scalar_t__ has_seq_scans (TYPE_1__*) ;

void
hash_freeze(HTAB *hashp)
{
 if (hashp->isshared)
  elog(ERROR, "cannot freeze shared hashtable \"%s\"", hashp->tabname);
 if (!hashp->frozen && has_seq_scans(hashp))
  elog(ERROR, "cannot freeze hashtable \"%s\" because it has active scans",
    hashp->tabname);
 hashp->frozen = 1;
}
