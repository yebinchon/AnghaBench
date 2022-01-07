
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int* values; int dim1; } ;
typedef TYPE_1__ int2vector ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_11__ {scalar_t__ attisdropped; } ;
struct TYPE_10__ {TYPE_2__* rd_att; } ;
struct TYPE_9__ {int natts; } ;
typedef TYPE_3__* Relation ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int Min (int,int ) ;
 TYPE_6__* TupleDescAttr (TYPE_2__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
validate_pkattnums(Relation rel,
       int2vector *pkattnums_arg, int32 pknumatts_arg,
       int **pkattnums, int *pknumatts)
{
 TupleDesc tupdesc = rel->rd_att;
 int natts = tupdesc->natts;
 int i;


 pknumatts_arg = Min(pknumatts_arg, pkattnums_arg->dim1);


 if (pknumatts_arg <= 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("number of key attributes must be > 0")));


 *pkattnums = (int *) palloc(pknumatts_arg * sizeof(int));
 *pknumatts = pknumatts_arg;


 for (i = 0; i < pknumatts_arg; i++)
 {
  int pkattnum = pkattnums_arg->values[i];
  int lnum;
  int j;


  if (pkattnum <= 0 || pkattnum > natts)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid attribute number %d", pkattnum)));


  lnum = 0;
  for (j = 0; j < natts; j++)
  {

   if (TupleDescAttr(tupdesc, j)->attisdropped)
    continue;

   if (++lnum == pkattnum)
    break;
  }

  if (j < natts)
   (*pkattnums)[i] = j;
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("invalid attribute number %d", pkattnum)));
 }
}
