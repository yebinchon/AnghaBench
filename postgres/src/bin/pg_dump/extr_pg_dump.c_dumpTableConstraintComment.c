
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int dumpId; TYPE_2__* namespace; int name; } ;
struct TYPE_16__ {TYPE_4__ dobj; int rolname; } ;
typedef TYPE_5__ TableInfo ;
struct TYPE_14__ {int dump; int dumpId; int catId; int name; } ;
struct TYPE_18__ {TYPE_3__ dobj; scalar_t__ separate; TYPE_5__* contable; } ;
struct TYPE_17__ {int data; } ;
struct TYPE_12__ {int name; } ;
struct TYPE_13__ {TYPE_1__ dobj; } ;
typedef TYPE_6__* PQExpBuffer ;
typedef TYPE_7__ ConstraintInfo ;
typedef int Archive ;


 int DUMP_COMPONENT_COMMENT ;
 int appendPQExpBuffer (TYPE_6__*,char*,int ) ;
 TYPE_6__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_6__*) ;
 int dumpComment (int *,int ,char*,int ,int ,int ,int ,int ) ;
 int fmtId (int ) ;
 int free (char*) ;
 char* pg_strdup (int ) ;

__attribute__((used)) static void
dumpTableConstraintComment(Archive *fout, ConstraintInfo *coninfo)
{
 TableInfo *tbinfo = coninfo->contable;
 PQExpBuffer conprefix = createPQExpBuffer();
 char *qtabname;

 qtabname = pg_strdup(fmtId(tbinfo->dobj.name));

 appendPQExpBuffer(conprefix, "CONSTRAINT %s ON",
       fmtId(coninfo->dobj.name));

 if (coninfo->dobj.dump & DUMP_COMPONENT_COMMENT)
  dumpComment(fout, conprefix->data, qtabname,
     tbinfo->dobj.namespace->dobj.name,
     tbinfo->rolname,
     coninfo->dobj.catId, 0,
     coninfo->separate ? coninfo->dobj.dumpId : tbinfo->dobj.dumpId);

 destroyPQExpBuffer(conprefix);
 free(qtabname);
}
