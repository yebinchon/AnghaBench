
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int changedConstraintDefs; int changedConstraintOids; } ;
typedef int Oid ;
typedef TYPE_1__ AlteredTableInfo ;


 int lappend (int ,char*) ;
 int lappend_oid (int ,int ) ;
 int list_member_oid (int ,int ) ;
 char* pg_get_constraintdef_command (int ) ;

__attribute__((used)) static void
RememberConstraintForRebuilding(Oid conoid, AlteredTableInfo *tab)
{







 if (!list_member_oid(tab->changedConstraintOids, conoid))
 {

  char *defstring = pg_get_constraintdef_command(conoid);

  tab->changedConstraintOids = lappend_oid(tab->changedConstraintOids,
             conoid);
  tab->changedConstraintDefs = lappend(tab->changedConstraintDefs,
            defstring);
 }
}
