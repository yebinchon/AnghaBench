
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_11__ {int attlen; scalar_t__ attisdropped; } ;
struct TYPE_8__ {int receiveSlot; } ;
struct TYPE_10__ {int * tofree; int * outvalues; TYPE_1__ pub; int cxt; scalar_t__ detoast; } ;
struct TYPE_9__ {int natts; } ;
typedef TYPE_3__ TStoreState ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int DestReceiver ;
typedef int Datum ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 TYPE_4__* TupleDescAttr (TYPE_2__*,int) ;
 int tstoreReceiveSlot_detoast ;
 int tstoreReceiveSlot_notoast ;

__attribute__((used)) static void
tstoreStartupReceiver(DestReceiver *self, int operation, TupleDesc typeinfo)
{
 TStoreState *myState = (TStoreState *) self;
 bool needtoast = 0;
 int natts = typeinfo->natts;
 int i;


 if (myState->detoast)
 {
  for (i = 0; i < natts; i++)
  {
   Form_pg_attribute attr = TupleDescAttr(typeinfo, i);

   if (attr->attisdropped)
    continue;
   if (attr->attlen == -1)
   {
    needtoast = 1;
    break;
   }
  }
 }


 if (needtoast)
 {
  myState->pub.receiveSlot = tstoreReceiveSlot_detoast;

  myState->outvalues = (Datum *)
   MemoryContextAlloc(myState->cxt, natts * sizeof(Datum));
  myState->tofree = (Datum *)
   MemoryContextAlloc(myState->cxt, natts * sizeof(Datum));
 }
 else
 {
  myState->pub.receiveSlot = tstoreReceiveSlot_notoast;
  myState->outvalues = ((void*)0);
  myState->tofree = ((void*)0);
 }
}
