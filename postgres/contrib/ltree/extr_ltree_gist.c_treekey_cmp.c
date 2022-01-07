
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r; } ;
typedef TYPE_1__ RIX ;


 int ltree_compare (int ,int ) ;

__attribute__((used)) static int
treekey_cmp(const void *a, const void *b)
{
 return ltree_compare(
       ((const RIX *) a)->r,
       ((const RIX *) b)->r
  );
}
