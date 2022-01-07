
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int datum_context; } ;
struct TYPE_6__ {scalar_t__ rectypeid; int * erh; int refname; } ;
typedef TYPE_1__ PLpgSQL_rec ;
typedef TYPE_2__ PLpgSQL_execstate ;


 int Assert (int ) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ RECORDOID ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ) ;
 int * make_expanded_record_from_typeid (scalar_t__,int,int ) ;
 int revalidate_rectypeid (TYPE_1__*) ;

__attribute__((used)) static void
instantiate_empty_record_variable(PLpgSQL_execstate *estate, PLpgSQL_rec *rec)
{
 Assert(rec->erh == ((void*)0));


 if (rec->rectypeid == RECORDOID)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("record \"%s\" is not assigned yet", rec->refname),
     errdetail("The tuple structure of a not-yet-assigned record is indeterminate.")));


 revalidate_rectypeid(rec);


 rec->erh = make_expanded_record_from_typeid(rec->rectypeid, -1,
            estate->datum_context);
}
