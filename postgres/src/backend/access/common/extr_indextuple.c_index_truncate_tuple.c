
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_19__ {int t_tid; } ;
struct TYPE_18__ {int natts; } ;
typedef TYPE_2__* IndexTuple ;
typedef int Datum ;


 int Assert (int) ;
 TYPE_2__* CopyIndexTuple (TYPE_2__*) ;
 int INDEX_MAX_KEYS ;
 scalar_t__ IndexTupleSize (TYPE_2__*) ;
 int TupleDescCopy (TYPE_1__*,TYPE_1__*) ;
 int TupleDescSize (TYPE_1__*) ;
 int index_deform_tuple (TYPE_2__*,TYPE_1__*,int *,int*) ;
 TYPE_2__* index_form_tuple (TYPE_1__*,int *,int*) ;
 TYPE_1__* palloc (int ) ;
 int pfree (TYPE_1__*) ;

IndexTuple
index_truncate_tuple(TupleDesc sourceDescriptor, IndexTuple source,
      int leavenatts)
{
 TupleDesc truncdesc;
 Datum values[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 IndexTuple truncated;

 Assert(leavenatts <= sourceDescriptor->natts);


 if (leavenatts == sourceDescriptor->natts)
  return CopyIndexTuple(source);


 truncdesc = palloc(TupleDescSize(sourceDescriptor));
 TupleDescCopy(truncdesc, sourceDescriptor);
 truncdesc->natts = leavenatts;


 index_deform_tuple(source, truncdesc, values, isnull);
 truncated = index_form_tuple(truncdesc, values, isnull);
 truncated->t_tid = source->t_tid;
 Assert(IndexTupleSize(truncated) <= IndexTupleSize(source));





 pfree(truncdesc);

 return truncated;
}
