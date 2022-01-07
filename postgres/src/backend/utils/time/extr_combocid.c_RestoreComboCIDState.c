
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmax; int cmin; } ;
typedef int CommandId ;
typedef TYPE_1__ ComboCidKeyData ;


 int Assert (int) ;
 int ERROR ;
 int GetComboCommandId (int ,int ) ;
 int comboCids ;
 int comboHash ;
 int elog (int ,char*) ;

void
RestoreComboCIDState(char *comboCIDstate)
{
 int num_elements;
 ComboCidKeyData *keydata;
 int i;
 CommandId cid;

 Assert(!comboCids && !comboHash);


 num_elements = *(int *) comboCIDstate;
 keydata = (ComboCidKeyData *) (comboCIDstate + sizeof(int));


 for (i = 0; i < num_elements; i++)
 {
  cid = GetComboCommandId(keydata[i].cmin, keydata[i].cmax);


  if (cid != i)
   elog(ERROR, "unexpected command ID while restoring combo CIDs");
 }
}
