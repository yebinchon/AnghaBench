
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int text ;
typedef int int64 ;
typedef int int32 ;
struct TYPE_8__ {int * tts_values; scalar_t__* tts_isnull; TYPE_2__* tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_10__ {int atttypid; } ;
struct TYPE_9__ {int natts; } ;
typedef int StringInfoData ;
typedef TYPE_3__* Form_pg_attribute ;
typedef int DestReceiver ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int DatumGetInt64 (int ) ;
 int * DatumGetTextPP (int ) ;
 int ERROR ;



 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int elog (int ,char*,int) ;
 int pg_lltoa (int ,char*) ;
 int pg_ltoa (int ,char*) ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_sendcountedtext (int *,char*,int ,int) ;
 int pq_sendint16 (int *,int) ;
 int pq_sendint32 (int *,int) ;
 int slot_getallattrs (TYPE_1__*) ;
 int strlen (char*) ;

bool
printsimple(TupleTableSlot *slot, DestReceiver *self)
{
 TupleDesc tupdesc = slot->tts_tupleDescriptor;
 StringInfoData buf;
 int i;


 slot_getallattrs(slot);


 pq_beginmessage(&buf, 'D');
 pq_sendint16(&buf, tupdesc->natts);

 for (i = 0; i < tupdesc->natts; ++i)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, i);
  Datum value;

  if (slot->tts_isnull[i])
  {
   pq_sendint32(&buf, -1);
   continue;
  }

  value = slot->tts_values[i];






  switch (attr->atttypid)
  {
   case 128:
    {
     text *t = DatumGetTextPP(value);

     pq_sendcountedtext(&buf,
            VARDATA_ANY(t),
            VARSIZE_ANY_EXHDR(t),
            0);
    }
    break;

   case 130:
    {
     int32 num = DatumGetInt32(value);
     char str[12];

     pg_ltoa(num, str);
     pq_sendcountedtext(&buf, str, strlen(str), 0);
    }
    break;

   case 129:
    {
     int64 num = DatumGetInt64(value);
     char str[23];

     pg_lltoa(num, str);
     pq_sendcountedtext(&buf, str, strlen(str), 0);
    }
    break;

   default:
    elog(ERROR, "unsupported type OID: %u", attr->atttypid);
  }
 }

 pq_endmessage(&buf);

 return 1;
}
