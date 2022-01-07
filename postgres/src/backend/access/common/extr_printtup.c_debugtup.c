
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_10__ {int atttypid; } ;
struct TYPE_9__ {int natts; } ;
typedef int Oid ;
typedef int DestReceiver ;
typedef int Datum ;


 char* OidOutputFunctionCall (int ,int ) ;
 TYPE_4__* TupleDescAttr (TYPE_2__*,int) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int printatt (unsigned int,TYPE_4__*,char*) ;
 int printf (char*) ;
 int slot_getattr (TYPE_1__*,int,int*) ;

bool
debugtup(TupleTableSlot *slot, DestReceiver *self)
{
 TupleDesc typeinfo = slot->tts_tupleDescriptor;
 int natts = typeinfo->natts;
 int i;
 Datum attr;
 char *value;
 bool isnull;
 Oid typoutput;
 bool typisvarlena;

 for (i = 0; i < natts; ++i)
 {
  attr = slot_getattr(slot, i + 1, &isnull);
  if (isnull)
   continue;
  getTypeOutputInfo(TupleDescAttr(typeinfo, i)->atttypid,
        &typoutput, &typisvarlena);

  value = OidOutputFunctionCall(typoutput, attr);

  printatt((unsigned) i + 1, TupleDescAttr(typeinfo, i), value);
 }
 printf("\t----\n");

 return 1;
}
