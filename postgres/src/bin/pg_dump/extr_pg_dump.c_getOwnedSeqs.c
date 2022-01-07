
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int oid; } ;
struct TYPE_7__ {int dump; TYPE_1__ catId; } ;
struct TYPE_8__ {int interesting; TYPE_2__ dobj; scalar_t__ is_identity_sequence; int owning_tab; } ;
typedef TYPE_3__ TableInfo ;
typedef int Archive ;


 int DUMP_COMPONENT_NONE ;
 int OidIsValid (int ) ;
 int fatal (char*,int ,int ) ;
 TYPE_3__* findTableByOid (int ) ;

void
getOwnedSeqs(Archive *fout, TableInfo tblinfo[], int numTables)
{
 int i;





 for (i = 0; i < numTables; i++)
 {
  TableInfo *seqinfo = &tblinfo[i];
  TableInfo *owning_tab;

  if (!OidIsValid(seqinfo->owning_tab))
   continue;

  owning_tab = findTableByOid(seqinfo->owning_tab);
  if (owning_tab == ((void*)0))
   fatal("failed sanity check, parent table with OID %u of sequence with OID %u not found",
      seqinfo->owning_tab, seqinfo->dobj.catId.oid);





  if (owning_tab->dobj.dump == DUMP_COMPONENT_NONE &&
   seqinfo->is_identity_sequence)
  {
   seqinfo->dobj.dump = DUMP_COMPONENT_NONE;
   continue;
  }
  seqinfo->dobj.dump = seqinfo->dobj.dump | owning_tab->dobj.dump;

  if (seqinfo->dobj.dump != DUMP_COMPONENT_NONE)
   seqinfo->interesting = 1;
 }
}
