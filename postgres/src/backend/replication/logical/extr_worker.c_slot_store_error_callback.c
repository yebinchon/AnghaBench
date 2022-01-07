
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * attnames; int relname; int nspname; int * atttyps; } ;
struct TYPE_6__ {TYPE_1__ remoterel; int localreloid; } ;
struct TYPE_5__ {size_t remote_attnum; scalar_t__ local_attnum; TYPE_3__* rel; } ;
typedef TYPE_2__ SlotErrCallbackArg ;
typedef int Oid ;
typedef TYPE_3__ LogicalRepRelMapEntry ;


 int errcontext (char*,int ,int ,int ,char*,int ) ;
 int format_type_be (int ) ;
 int get_atttype (int ,scalar_t__) ;
 char* logicalrep_typmap_gettypname (int ) ;

__attribute__((used)) static void
slot_store_error_callback(void *arg)
{
 SlotErrCallbackArg *errarg = (SlotErrCallbackArg *) arg;
 LogicalRepRelMapEntry *rel;
 char *remotetypname;
 Oid remotetypoid,
    localtypoid;


 if (errarg->remote_attnum < 0)
  return;

 rel = errarg->rel;
 remotetypoid = rel->remoterel.atttyps[errarg->remote_attnum];


 remotetypname = logicalrep_typmap_gettypname(remotetypoid);


 localtypoid = get_atttype(rel->localreloid, errarg->local_attnum + 1);

 errcontext("processing remote data for replication target relation \"%s.%s\" column \"%s\", "
      "remote type %s, local type %s",
      rel->remoterel.nspname, rel->remoterel.relname,
      rel->remoterel.attnames[errarg->remote_attnum],
      remotetypname,
      format_type_be(localtypoid));
}
