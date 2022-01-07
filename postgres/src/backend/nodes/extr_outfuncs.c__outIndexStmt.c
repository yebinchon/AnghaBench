
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int IndexStmt ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_STRING_FIELD (int ) ;
 int accessMethod ;
 int concurrent ;
 int deferrable ;
 int excludeOpNames ;
 int idxcomment ;
 int idxname ;
 int if_not_exists ;
 int indexIncludingParams ;
 int indexOid ;
 int indexParams ;
 int initdeferred ;
 int isconstraint ;
 int oldNode ;
 int options ;
 int primary ;
 int relation ;
 int reset_default_tblspc ;
 int tableSpace ;
 int transformed ;
 int unique ;
 int whereClause ;

__attribute__((used)) static void
_outIndexStmt(StringInfo str, const IndexStmt *node)
{
 WRITE_NODE_TYPE("INDEXSTMT");

 WRITE_STRING_FIELD(idxname);
 WRITE_NODE_FIELD(relation);
 WRITE_STRING_FIELD(accessMethod);
 WRITE_STRING_FIELD(tableSpace);
 WRITE_NODE_FIELD(indexParams);
 WRITE_NODE_FIELD(indexIncludingParams);
 WRITE_NODE_FIELD(options);
 WRITE_NODE_FIELD(whereClause);
 WRITE_NODE_FIELD(excludeOpNames);
 WRITE_STRING_FIELD(idxcomment);
 WRITE_OID_FIELD(indexOid);
 WRITE_OID_FIELD(oldNode);
 WRITE_BOOL_FIELD(unique);
 WRITE_BOOL_FIELD(primary);
 WRITE_BOOL_FIELD(isconstraint);
 WRITE_BOOL_FIELD(deferrable);
 WRITE_BOOL_FIELD(initdeferred);
 WRITE_BOOL_FIELD(transformed);
 WRITE_BOOL_FIELD(concurrent);
 WRITE_BOOL_FIELD(if_not_exists);
 WRITE_BOOL_FIELD(reset_default_tblspc);
}
