
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dump; } ;
struct TYPE_8__ {scalar_t__ relkind; int numParents; int ncheck; TYPE_4__* checkexprs; struct TYPE_8__** parents; TYPE_1__ dobj; } ;
typedef TYPE_3__ TableInfo ;
struct TYPE_7__ {int name; } ;
struct TYPE_9__ {int conislocal; TYPE_2__ dobj; } ;
typedef TYPE_4__ ConstraintInfo ;


 int DUMP_COMPONENT_DEFINITION ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RELKIND_VIEW ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
guessConstraintInheritance(TableInfo *tblinfo, int numTables)
{
 int i,
    j,
    k;

 for (i = 0; i < numTables; i++)
 {
  TableInfo *tbinfo = &(tblinfo[i]);
  int numParents;
  TableInfo **parents;
  TableInfo *parent;


  if (tbinfo->relkind == RELKIND_SEQUENCE ||
   tbinfo->relkind == RELKIND_VIEW)
   continue;


  if (!(tbinfo->dobj.dump & DUMP_COMPONENT_DEFINITION))
   continue;

  numParents = tbinfo->numParents;
  parents = tbinfo->parents;

  if (numParents == 0)
   continue;


  for (j = 0; j < tbinfo->ncheck; j++)
  {
   ConstraintInfo *constr;

   constr = &(tbinfo->checkexprs[j]);

   for (k = 0; k < numParents; k++)
   {
    int l;

    parent = parents[k];
    for (l = 0; l < parent->ncheck; l++)
    {
     ConstraintInfo *pconstr = &(parent->checkexprs[l]);

     if (strcmp(pconstr->dobj.name, constr->dobj.name) == 0)
     {
      constr->conislocal = 0;
      break;
     }
    }
    if (!constr->conislocal)
     break;
   }
  }
 }
}
