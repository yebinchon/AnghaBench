
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_3__* TupleDesc ;
struct TYPE_16__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attisdropped; } ;
struct TYPE_12__ {int natts; TYPE_4__* atts; TYPE_3__* recdesc; } ;
struct TYPE_13__ {TYPE_1__ tuple; } ;
struct TYPE_15__ {scalar_t__ func; scalar_t__ typoid; scalar_t__ typmod; int mcxt; TYPE_2__ u; } ;
struct TYPE_14__ {int natts; } ;
typedef int PLyProcedure ;
typedef TYPE_4__ PLyObToDatum ;
typedef TYPE_5__* Form_pg_attribute ;


 int Assert (int) ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 scalar_t__ PLyObject_ToComposite ;
 int PLy_output_setup_func (TYPE_4__*,int ,scalar_t__,scalar_t__,int *) ;
 scalar_t__ RECORDOID ;
 TYPE_5__* TupleDescAttr (TYPE_3__*,int) ;
 int pfree (TYPE_4__*) ;

void
PLy_output_setup_tuple(PLyObToDatum *arg, TupleDesc desc, PLyProcedure *proc)
{
 int i;


 Assert(arg->func == PLyObject_ToComposite);


 if (arg->typoid == RECORDOID && arg->typmod < 0)
  arg->u.tuple.recdesc = desc;


 if (arg->u.tuple.natts != desc->natts)
 {
  if (arg->u.tuple.atts)
   pfree(arg->u.tuple.atts);
  arg->u.tuple.natts = desc->natts;
  arg->u.tuple.atts = (PLyObToDatum *)
   MemoryContextAllocZero(arg->mcxt,
           desc->natts * sizeof(PLyObToDatum));
 }


 for (i = 0; i < desc->natts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(desc, i);
  PLyObToDatum *att = &arg->u.tuple.atts[i];

  if (attr->attisdropped)
   continue;

  if (att->typoid == attr->atttypid && att->typmod == attr->atttypmod)
   continue;

  PLy_output_setup_func(att, arg->mcxt,
         attr->atttypid, attr->atttypmod,
         proc);
 }
}
