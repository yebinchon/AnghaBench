
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTblEntry ;


 int COMPARE_BITMAPSET_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int alias ;
 int checkAsUser ;
 int colcollations ;
 int coltypes ;
 int coltypmods ;
 int ctelevelsup ;
 int ctename ;
 int enrname ;
 int enrtuples ;
 int eref ;
 int extraUpdatedCols ;
 int funcordinality ;
 int functions ;
 int inFromCl ;
 int inh ;
 int insertedCols ;
 int joinaliasvars ;
 int jointype ;
 int lateral ;
 int relid ;
 int relkind ;
 int rellockmode ;
 int requiredPerms ;
 int rtekind ;
 int securityQuals ;
 int security_barrier ;
 int selectedCols ;
 int self_reference ;
 int subquery ;
 int tablefunc ;
 int tablesample ;
 int updatedCols ;
 int values_lists ;

__attribute__((used)) static bool
_equalRangeTblEntry(const RangeTblEntry *a, const RangeTblEntry *b)
{
 COMPARE_SCALAR_FIELD(rtekind);
 COMPARE_SCALAR_FIELD(relid);
 COMPARE_SCALAR_FIELD(relkind);
 COMPARE_SCALAR_FIELD(rellockmode);
 COMPARE_NODE_FIELD(tablesample);
 COMPARE_NODE_FIELD(subquery);
 COMPARE_SCALAR_FIELD(security_barrier);
 COMPARE_SCALAR_FIELD(jointype);
 COMPARE_NODE_FIELD(joinaliasvars);
 COMPARE_NODE_FIELD(functions);
 COMPARE_SCALAR_FIELD(funcordinality);
 COMPARE_NODE_FIELD(tablefunc);
 COMPARE_NODE_FIELD(values_lists);
 COMPARE_STRING_FIELD(ctename);
 COMPARE_SCALAR_FIELD(ctelevelsup);
 COMPARE_SCALAR_FIELD(self_reference);
 COMPARE_NODE_FIELD(coltypes);
 COMPARE_NODE_FIELD(coltypmods);
 COMPARE_NODE_FIELD(colcollations);
 COMPARE_STRING_FIELD(enrname);
 COMPARE_SCALAR_FIELD(enrtuples);
 COMPARE_NODE_FIELD(alias);
 COMPARE_NODE_FIELD(eref);
 COMPARE_SCALAR_FIELD(lateral);
 COMPARE_SCALAR_FIELD(inh);
 COMPARE_SCALAR_FIELD(inFromCl);
 COMPARE_SCALAR_FIELD(requiredPerms);
 COMPARE_SCALAR_FIELD(checkAsUser);
 COMPARE_BITMAPSET_FIELD(selectedCols);
 COMPARE_BITMAPSET_FIELD(insertedCols);
 COMPARE_BITMAPSET_FIELD(updatedCols);
 COMPARE_BITMAPSET_FIELD(extraUpdatedCols);
 COMPARE_NODE_FIELD(securityQuals);

 return 1;
}
