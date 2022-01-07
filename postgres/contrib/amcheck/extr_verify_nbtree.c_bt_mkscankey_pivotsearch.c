
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pivotsearch; } ;
typedef int Relation ;
typedef int IndexTuple ;
typedef TYPE_1__* BTScanInsert ;


 TYPE_1__* _bt_mkscankey (int ,int ) ;

__attribute__((used)) static inline BTScanInsert
bt_mkscankey_pivotsearch(Relation rel, IndexTuple itup)
{
 BTScanInsert skey;

 skey = _bt_mkscankey(rel, itup);
 skey->pivotsearch = 1;

 return skey;
}
