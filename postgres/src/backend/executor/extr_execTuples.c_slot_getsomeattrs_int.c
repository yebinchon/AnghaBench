
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int tts_nvalid; TYPE_2__* tts_ops; TYPE_1__* tts_tupleDescriptor; } ;
typedef TYPE_3__ TupleTableSlot ;
struct TYPE_8__ {int (* getsomeattrs ) (TYPE_3__*,int) ;} ;
struct TYPE_7__ {int natts; } ;


 int Assert (int) ;
 int ERROR ;
 int elog (int ,char*,int) ;
 int slot_getmissingattrs (TYPE_3__*,int,int) ;
 int stub1 (TYPE_3__*,int) ;
 scalar_t__ unlikely (int) ;

void
slot_getsomeattrs_int(TupleTableSlot *slot, int attnum)
{

 Assert(slot->tts_nvalid < attnum);
 Assert(attnum > 0);

 if (unlikely(attnum > slot->tts_tupleDescriptor->natts))
  elog(ERROR, "invalid attribute number %d", attnum);


 slot->tts_ops->getsomeattrs(slot, attnum);





 if (unlikely(slot->tts_nvalid < attnum))
 {
  slot_getmissingattrs(slot, slot->tts_nvalid, attnum);
  slot->tts_nvalid = attnum;
 }
}
