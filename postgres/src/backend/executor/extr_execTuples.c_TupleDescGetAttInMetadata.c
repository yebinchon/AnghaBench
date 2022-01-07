
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {int * atttypmods; int * attioparams; int * attinfuncs; int tupdesc; } ;
struct TYPE_10__ {int atttypmod; int atttypid; int attisdropped; } ;
struct TYPE_9__ {int natts; } ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int FmgrInfo ;
typedef TYPE_3__ AttInMetadata ;


 int BlessTupleDesc (TYPE_1__*) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int fmgr_info (int ,int *) ;
 int getTypeInputInfo (int ,int *,int *) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;

AttInMetadata *
TupleDescGetAttInMetadata(TupleDesc tupdesc)
{
 int natts = tupdesc->natts;
 int i;
 Oid atttypeid;
 Oid attinfuncid;
 FmgrInfo *attinfuncinfo;
 Oid *attioparams;
 int32 *atttypmods;
 AttInMetadata *attinmeta;

 attinmeta = (AttInMetadata *) palloc(sizeof(AttInMetadata));


 attinmeta->tupdesc = BlessTupleDesc(tupdesc);




 attinfuncinfo = (FmgrInfo *) palloc0(natts * sizeof(FmgrInfo));
 attioparams = (Oid *) palloc0(natts * sizeof(Oid));
 atttypmods = (int32 *) palloc0(natts * sizeof(int32));

 for (i = 0; i < natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);


  if (!att->attisdropped)
  {
   atttypeid = att->atttypid;
   getTypeInputInfo(atttypeid, &attinfuncid, &attioparams[i]);
   fmgr_info(attinfuncid, &attinfuncinfo[i]);
   atttypmods[i] = att->atttypmod;
  }
 }
 attinmeta->attinfuncs = attinfuncinfo;
 attinmeta->attioparams = attioparams;
 attinmeta->atttypmods = atttypmods;

 return attinmeta;
}
