
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int IndexOptInfo ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int hypothetical ;
 int immediate ;
 int indexoid ;
 int indextlist ;
 int indpred ;
 int indrestrictinfo ;
 int ncolumns ;
 int pages ;
 int predOK ;
 int relam ;
 int tree_height ;
 int tuples ;
 int unique ;

__attribute__((used)) static void
_outIndexOptInfo(StringInfo str, const IndexOptInfo *node)
{
 WRITE_NODE_TYPE("INDEXOPTINFO");


 WRITE_OID_FIELD(indexoid);

 WRITE_UINT_FIELD(pages);
 WRITE_FLOAT_FIELD(tuples, "%.0f");
 WRITE_INT_FIELD(tree_height);
 WRITE_INT_FIELD(ncolumns);

 WRITE_OID_FIELD(relam);

 WRITE_NODE_FIELD(indpred);
 WRITE_NODE_FIELD(indextlist);
 WRITE_NODE_FIELD(indrestrictinfo);
 WRITE_BOOL_FIELD(predOK);
 WRITE_BOOL_FIELD(unique);
 WRITE_BOOL_FIELD(immediate);
 WRITE_BOOL_FIELD(hypothetical);

}
