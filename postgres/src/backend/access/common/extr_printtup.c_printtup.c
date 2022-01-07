
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int bytea ;
struct TYPE_9__ {scalar_t__* tts_isnull; int * tts_values; TYPE_2__* tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_12__ {int nattrs; int tmpcontext; TYPE_3__* myinfo; TYPE_2__* attrinfo; int buf; } ;
struct TYPE_11__ {scalar_t__ format; int finfo; scalar_t__ typisvarlena; } ;
struct TYPE_10__ {int natts; } ;
typedef int * StringInfo ;
typedef TYPE_3__ PrinttupAttrInfo ;
typedef int MemoryContext ;
typedef int DestReceiver ;
typedef int Datum ;
typedef TYPE_4__ DR_printtup ;


 int DatumGetPointer (int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 char* OutputFunctionCall (int *,int ) ;
 int * SendFunctionCall (int *,int ) ;
 int VALGRIND_CHECK_MEM_IS_DEFINED (int ,int ) ;
 int VARDATA (int *) ;
 int VARHDRSZ ;
 int VARSIZE (int *) ;
 int VARSIZE_ANY (int ) ;
 int pq_beginmessage_reuse (int *,char) ;
 int pq_endmessage_reuse (int *) ;
 int pq_sendbytes (int *,int ,int) ;
 int pq_sendcountedtext (int *,char*,int ,int) ;
 int pq_sendint16 (int *,int) ;
 int pq_sendint32 (int *,int) ;
 int printtup_prepare_info (TYPE_4__*,TYPE_2__*,int) ;
 int slot_getallattrs (TYPE_1__*) ;
 int strlen (char*) ;

__attribute__((used)) static bool
printtup(TupleTableSlot *slot, DestReceiver *self)
{
 TupleDesc typeinfo = slot->tts_tupleDescriptor;
 DR_printtup *myState = (DR_printtup *) self;
 MemoryContext oldcontext;
 StringInfo buf = &myState->buf;
 int natts = typeinfo->natts;
 int i;


 if (myState->attrinfo != typeinfo || myState->nattrs != natts)
  printtup_prepare_info(myState, typeinfo, natts);


 slot_getallattrs(slot);


 oldcontext = MemoryContextSwitchTo(myState->tmpcontext);




 pq_beginmessage_reuse(buf, 'D');

 pq_sendint16(buf, natts);




 for (i = 0; i < natts; ++i)
 {
  PrinttupAttrInfo *thisState = myState->myinfo + i;
  Datum attr = slot->tts_values[i];

  if (slot->tts_isnull[i])
  {
   pq_sendint32(buf, -1);
   continue;
  }
  if (thisState->typisvarlena)
   VALGRIND_CHECK_MEM_IS_DEFINED(DatumGetPointer(attr),
            VARSIZE_ANY(attr));

  if (thisState->format == 0)
  {

   char *outputstr;

   outputstr = OutputFunctionCall(&thisState->finfo, attr);
   pq_sendcountedtext(buf, outputstr, strlen(outputstr), 0);
  }
  else
  {

   bytea *outputbytes;

   outputbytes = SendFunctionCall(&thisState->finfo, attr);
   pq_sendint32(buf, VARSIZE(outputbytes) - VARHDRSZ);
   pq_sendbytes(buf, VARDATA(outputbytes),
       VARSIZE(outputbytes) - VARHDRSZ);
  }
 }

 pq_endmessage_reuse(buf);


 MemoryContextSwitchTo(oldcontext);
 MemoryContextReset(myState->tmpcontext);

 return 1;
}
