
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bd_context; TYPE_1__* bd_tupdesc; } ;
struct TYPE_4__ {int tdrefcount; } ;
typedef TYPE_2__ BrinDesc ;


 int Assert (int) ;
 int MemoryContextDelete (int ) ;

void
brin_free_desc(BrinDesc *bdesc)
{

 Assert(bdesc->bd_tupdesc->tdrefcount >= 1);

 MemoryContextDelete(bdesc->bd_context);
}
