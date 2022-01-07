
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * TupleDesc ;
struct TYPE_9__ {int * bd_disktdesc; TYPE_3__** bd_info; TYPE_1__* bd_tupdesc; int bd_totalstored; int bd_context; } ;
struct TYPE_8__ {int oi_nstored; TYPE_2__** oi_typcache; } ;
struct TYPE_7__ {int type_id; } ;
struct TYPE_6__ {int natts; } ;
typedef int MemoryContext ;
typedef TYPE_4__ BrinDesc ;
typedef int AttrNumber ;


 int * CreateTemplateTupleDesc (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int TupleDescInitEntry (int *,int ,int *,int ,int,int ) ;

__attribute__((used)) static TupleDesc
brtuple_disk_tupdesc(BrinDesc *brdesc)
{

 if (brdesc->bd_disktdesc == ((void*)0))
 {
  int i;
  int j;
  AttrNumber attno = 1;
  TupleDesc tupdesc;
  MemoryContext oldcxt;


  oldcxt = MemoryContextSwitchTo(brdesc->bd_context);

  tupdesc = CreateTemplateTupleDesc(brdesc->bd_totalstored);

  for (i = 0; i < brdesc->bd_tupdesc->natts; i++)
  {
   for (j = 0; j < brdesc->bd_info[i]->oi_nstored; j++)
    TupleDescInitEntry(tupdesc, attno++, ((void*)0),
           brdesc->bd_info[i]->oi_typcache[j]->type_id,
           -1, 0);
  }

  MemoryContextSwitchTo(oldcxt);

  brdesc->bd_disktdesc = tupdesc;
 }

 return brdesc->bd_disktdesc;
}
