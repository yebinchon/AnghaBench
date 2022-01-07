
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ TupleDesc ;
struct TYPE_14__ {scalar_t__ er_decltypeid; } ;
struct TYPE_13__ {scalar_t__ rectypeid; } ;
typedef TYPE_1__ PLpgSQL_rec ;
typedef int PLpgSQL_execstate ;
typedef int MemoryContext ;
typedef TYPE_2__ ExpandedRecordHeader ;


 int ExpandedRecordIsDomain (TYPE_2__*) ;
 scalar_t__ RECORDOID ;
 scalar_t__ expanded_record_get_tupdesc (TYPE_2__*) ;
 int get_eval_mcontext (int *) ;
 TYPE_2__* make_expanded_record_from_exprecord (TYPE_2__*,int ) ;
 TYPE_2__* make_expanded_record_from_tupdesc (scalar_t__,int ) ;
 TYPE_2__* make_expanded_record_from_typeid (scalar_t__,int,int ) ;
 int revalidate_rectypeid (TYPE_1__*) ;

__attribute__((used)) static ExpandedRecordHeader *
make_expanded_record_for_rec(PLpgSQL_execstate *estate,
        PLpgSQL_rec *rec,
        TupleDesc srctupdesc,
        ExpandedRecordHeader *srcerh)
{
 ExpandedRecordHeader *newerh;
 MemoryContext mcontext = get_eval_mcontext(estate);

 if (rec->rectypeid != RECORDOID)
 {



  revalidate_rectypeid(rec);





  if (srcerh && rec->rectypeid == srcerh->er_decltypeid)
   newerh = make_expanded_record_from_exprecord(srcerh,
               mcontext);
  else
   newerh = make_expanded_record_from_typeid(rec->rectypeid, -1,
               mcontext);
 }
 else
 {





  if (srcerh && !ExpandedRecordIsDomain(srcerh))
   newerh = make_expanded_record_from_exprecord(srcerh,
               mcontext);
  else
  {
   if (!srctupdesc)
    srctupdesc = expanded_record_get_tupdesc(srcerh);
   newerh = make_expanded_record_from_tupdesc(srctupdesc,
                mcontext);
  }
 }

 return newerh;
}
