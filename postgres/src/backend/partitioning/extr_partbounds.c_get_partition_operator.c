
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* partopcintype; scalar_t__* parttypid; int * partopfamily; } ;
typedef int StrategyNumber ;
typedef TYPE_1__* PartitionKey ;
typedef int Oid ;


 int ERROR ;
 int IsPolymorphicType (scalar_t__) ;
 int OidIsValid (int ) ;
 scalar_t__ RECORDOID ;
 int elog (int ,char*,int ,scalar_t__,scalar_t__,int ) ;
 int get_opfamily_member (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static Oid
get_partition_operator(PartitionKey key, int col, StrategyNumber strategy,
        bool *need_relabel)
{
 Oid operoid;





 operoid = get_opfamily_member(key->partopfamily[col],
          key->partopcintype[col],
          key->partopcintype[col],
          strategy);
 if (!OidIsValid(operoid))
  elog(ERROR, "missing operator %d(%u,%u) in partition opfamily %u",
    strategy, key->partopcintype[col], key->partopcintype[col],
    key->partopfamily[col]);






 *need_relabel = (key->parttypid[col] != key->partopcintype[col] &&
      key->partopcintype[col] != RECORDOID &&
      !IsPolymorphicType(key->partopcintype[col]));

 return operoid;
}
