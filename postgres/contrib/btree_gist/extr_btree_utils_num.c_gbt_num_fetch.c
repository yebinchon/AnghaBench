
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64 ;
typedef int int32 ;
typedef int int16 ;
struct TYPE_8__ {int indexsize; int size; int t; } ;
typedef TYPE_1__ gbtree_ninfo ;
typedef int float8 ;
typedef int float4 ;
typedef int Timestamp ;
typedef int TimeADT ;
struct TYPE_9__ {int offset; int page; int rel; scalar_t__ key; } ;
typedef int Oid ;
typedef TYPE_2__ GISTENTRY ;
typedef int Datum ;
typedef int DateADT ;
typedef int Cash ;


 int Assert (int) ;
 int CashGetDatum (int ) ;
 int DateADTGetDatum (int ) ;
 int Float4GetDatum (int ) ;
 int Float8GetDatum (int ) ;
 int Int16GetDatum (int ) ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (scalar_t__) ;
 int TimeADTGetDatum (int ) ;
 int TimestampGetDatum (int ) ;
 int gistentryinit (TYPE_2__,int ,int ,int ,int ,int) ;
 TYPE_2__* palloc (int) ;

GISTENTRY *
gbt_num_fetch(GISTENTRY *entry, const gbtree_ninfo *tinfo)
{
 GISTENTRY *retval;
 Datum datum;

 Assert(tinfo->indexsize >= 2 * tinfo->size);






 switch (tinfo->t)
 {
  case 133:
   datum = Int16GetDatum(*(int16 *) entry->key);
   break;
  case 132:
   datum = Int32GetDatum(*(int32 *) entry->key);
   break;
  case 131:
   datum = Int64GetDatum(*(int64 *) entry->key);
   break;
  case 130:
  case 136:
   datum = ObjectIdGetDatum(*(Oid *) entry->key);
   break;
  case 135:
   datum = Float4GetDatum(*(float4 *) entry->key);
   break;
  case 134:
   datum = Float8GetDatum(*(float8 *) entry->key);
   break;
  case 137:
   datum = DateADTGetDatum(*(DateADT *) entry->key);
   break;
  case 129:
   datum = TimeADTGetDatum(*(TimeADT *) entry->key);
   break;
  case 128:
   datum = TimestampGetDatum(*(Timestamp *) entry->key);
   break;
  case 138:
   datum = CashGetDatum(*(Cash *) entry->key);
   break;
  default:
   datum = PointerGetDatum(entry->key);
 }

 retval = palloc(sizeof(GISTENTRY));
 gistentryinit(*retval, datum, entry->rel, entry->page, entry->offset,
      0);
 return retval;
}
