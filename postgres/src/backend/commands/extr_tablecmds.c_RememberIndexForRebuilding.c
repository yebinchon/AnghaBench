
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int changedIndexDefs; int changedIndexOids; } ;
typedef int Oid ;
typedef TYPE_1__ AlteredTableInfo ;


 scalar_t__ OidIsValid (int ) ;
 int RememberConstraintForRebuilding (int ,TYPE_1__*) ;
 int get_index_constraint (int ) ;
 int lappend (int ,char*) ;
 int lappend_oid (int ,int ) ;
 int list_member_oid (int ,int ) ;
 char* pg_get_indexdef_string (int ) ;

__attribute__((used)) static void
RememberIndexForRebuilding(Oid indoid, AlteredTableInfo *tab)
{







 if (!list_member_oid(tab->changedIndexOids, indoid))
 {
  Oid conoid = get_index_constraint(indoid);

  if (OidIsValid(conoid))
  {
   RememberConstraintForRebuilding(conoid, tab);
  }
  else
  {

   char *defstring = pg_get_indexdef_string(indoid);

   tab->changedIndexOids = lappend_oid(tab->changedIndexOids,
            indoid);
   tab->changedIndexDefs = lappend(tab->changedIndexDefs,
           defstring);
  }
 }
}
