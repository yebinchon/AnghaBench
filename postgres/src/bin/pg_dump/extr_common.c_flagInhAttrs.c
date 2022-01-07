
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {char* name; int dumpId; scalar_t__ dump; int namespace; } ;
struct TYPE_11__ {scalar_t__ relkind; int numParents; int numatts; int* notnull; int* inhNotNull; TYPE_4__** attrdefs; TYPE_2__ dobj; int * attnames; scalar_t__* attisdropped; struct TYPE_11__** parents; } ;
typedef TYPE_3__ TableInfo ;
struct TYPE_9__ {scalar_t__ oid; scalar_t__ tableoid; } ;
struct TYPE_13__ {scalar_t__ dump; int namespace; void* name; TYPE_1__ catId; int objType; } ;
struct TYPE_12__ {int adnum; int separate; TYPE_7__ dobj; void* adef_expr; TYPE_3__* adtable; } ;
typedef int DumpOptions ;
typedef TYPE_4__ AttrDefInfo ;


 int AssignDumpId (TYPE_7__*) ;
 int DO_ATTRDEF ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RELKIND_VIEW ;
 int addObjectDependency (TYPE_7__*,int ) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (char*) ;
 scalar_t__ shouldPrintColumn (int *,TYPE_3__*,int) ;
 int strInArray (int ,int *,int) ;

__attribute__((used)) static void
flagInhAttrs(DumpOptions *dopt, TableInfo *tblinfo, int numTables)
{
 int i,
    j,
    k;

 for (i = 0; i < numTables; i++)
 {
  TableInfo *tbinfo = &(tblinfo[i]);
  int numParents;
  TableInfo **parents;


  if (tbinfo->relkind == RELKIND_SEQUENCE ||
   tbinfo->relkind == RELKIND_VIEW ||
   tbinfo->relkind == RELKIND_MATVIEW)
   continue;


  if (!tbinfo->dobj.dump)
   continue;

  numParents = tbinfo->numParents;
  parents = tbinfo->parents;

  if (numParents == 0)
   continue;


  for (j = 0; j < tbinfo->numatts; j++)
  {
   bool foundNotNull;
   bool foundDefault;


   if (tbinfo->attisdropped[j])
    continue;

   foundNotNull = 0;
   foundDefault = 0;
   for (k = 0; k < numParents; k++)
   {
    TableInfo *parent = parents[k];
    int inhAttrInd;

    inhAttrInd = strInArray(tbinfo->attnames[j],
          parent->attnames,
          parent->numatts);
    if (inhAttrInd >= 0)
    {
     foundNotNull |= parent->notnull[inhAttrInd];
     foundDefault |= (parent->attrdefs[inhAttrInd] != ((void*)0));
    }
   }


   tbinfo->inhNotNull[j] = foundNotNull;


   if (foundDefault && tbinfo->attrdefs[j] == ((void*)0))
   {
    AttrDefInfo *attrDef;

    attrDef = (AttrDefInfo *) pg_malloc(sizeof(AttrDefInfo));
    attrDef->dobj.objType = DO_ATTRDEF;
    attrDef->dobj.catId.tableoid = 0;
    attrDef->dobj.catId.oid = 0;
    AssignDumpId(&attrDef->dobj);
    attrDef->dobj.name = pg_strdup(tbinfo->dobj.name);
    attrDef->dobj.namespace = tbinfo->dobj.namespace;
    attrDef->dobj.dump = tbinfo->dobj.dump;

    attrDef->adtable = tbinfo;
    attrDef->adnum = j + 1;
    attrDef->adef_expr = pg_strdup("NULL");


    if (shouldPrintColumn(dopt, tbinfo, j))
    {
     attrDef->separate = 0;

    }
    else
    {

     attrDef->separate = 1;

     addObjectDependency(&attrDef->dobj,
          tbinfo->dobj.dumpId);
    }

    tbinfo->attrdefs[j] = attrDef;
   }
  }
 }
}
