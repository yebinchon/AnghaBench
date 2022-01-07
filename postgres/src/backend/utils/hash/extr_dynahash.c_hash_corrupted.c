
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tabname; scalar_t__ isshared; } ;
typedef TYPE_1__ HTAB ;


 int FATAL ;
 int PANIC ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
hash_corrupted(HTAB *hashp)
{




 if (hashp->isshared)
  elog(PANIC, "hash table \"%s\" corrupted", hashp->tabname);
 else
  elog(FATAL, "hash table \"%s\" corrupted", hashp->tabname);
}
