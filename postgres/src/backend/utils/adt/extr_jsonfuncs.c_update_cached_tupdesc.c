
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_6__ {scalar_t__ tdtypeid; scalar_t__ tdtypmod; } ;
struct TYPE_5__ {scalar_t__ base_typid; scalar_t__ base_typmod; TYPE_3__* tupdesc; } ;
typedef int MemoryContext ;
typedef TYPE_1__ CompositeIOData ;


 TYPE_3__* CreateTupleDescCopy (int ) ;
 int FreeTupleDesc (TYPE_3__*) ;
 int MemoryContextSwitchTo (int ) ;
 int ReleaseTupleDesc (int ) ;
 int lookup_rowtype_tupdesc (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
update_cached_tupdesc(CompositeIOData *io, MemoryContext mcxt)
{
 if (!io->tupdesc ||
  io->tupdesc->tdtypeid != io->base_typid ||
  io->tupdesc->tdtypmod != io->base_typmod)
 {
  TupleDesc tupdesc = lookup_rowtype_tupdesc(io->base_typid,
              io->base_typmod);
  MemoryContext oldcxt;

  if (io->tupdesc)
   FreeTupleDesc(io->tupdesc);


  oldcxt = MemoryContextSwitchTo(mcxt);
  io->tupdesc = CreateTupleDescCopy(tupdesc);
  MemoryContextSwitchTo(oldcxt);

  ReleaseTupleDesc(tupdesc);
 }
}
