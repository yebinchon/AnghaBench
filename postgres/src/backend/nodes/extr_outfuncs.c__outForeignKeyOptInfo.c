
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nkeys; int * rinfos; int ** eclass; } ;
typedef int StringInfo ;
typedef TYPE_1__ ForeignKeyOptInfo ;


 int WRITE_ATTRNUMBER_ARRAY (int ,int) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_ARRAY (int ,int) ;
 int WRITE_UINT_FIELD (int ) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 int con_relid ;
 int confkey ;
 int conkey ;
 int conpfeqop ;
 int list_length (int ) ;
 int nkeys ;
 int nmatched_ec ;
 int nmatched_rcols ;
 int nmatched_ri ;
 int ref_relid ;

__attribute__((used)) static void
_outForeignKeyOptInfo(StringInfo str, const ForeignKeyOptInfo *node)
{
 int i;

 WRITE_NODE_TYPE("FOREIGNKEYOPTINFO");

 WRITE_UINT_FIELD(con_relid);
 WRITE_UINT_FIELD(ref_relid);
 WRITE_INT_FIELD(nkeys);
 WRITE_ATTRNUMBER_ARRAY(conkey, node->nkeys);
 WRITE_ATTRNUMBER_ARRAY(confkey, node->nkeys);
 WRITE_OID_ARRAY(conpfeqop, node->nkeys);
 WRITE_INT_FIELD(nmatched_ec);
 WRITE_INT_FIELD(nmatched_rcols);
 WRITE_INT_FIELD(nmatched_ri);

 appendStringInfoString(str, " :eclass");
 for (i = 0; i < node->nkeys; i++)
  appendStringInfo(str, " %d", (node->eclass[i] != ((void*)0)));
 appendStringInfoString(str, " :rinfos");
 for (i = 0; i < node->nkeys; i++)
  appendStringInfo(str, " %d", list_length(node->rinfos[i]));
}
