
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {int attnotnull; int atthasdef; int atthasmissing; char attidentity; char attgenerated; } ;
struct TYPE_10__ {int natts; int tdrefcount; int * constr; } ;
typedef TYPE_2__* Form_pg_attribute ;


 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int TupleDescSize (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int ) ;

void
TupleDescCopy(TupleDesc dst, TupleDesc src)
{
 int i;


 memcpy(dst, src, TupleDescSize(src));





 for (i = 0; i < dst->natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(dst, i);

  att->attnotnull = 0;
  att->atthasdef = 0;
  att->atthasmissing = 0;
  att->attidentity = '\0';
  att->attgenerated = '\0';
 }
 dst->constr = ((void*)0);





 dst->tdrefcount = -1;
}
