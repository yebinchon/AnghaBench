
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IndexStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
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

__attribute__((used)) static bool
_equalIndexStmt(const IndexStmt *a, const IndexStmt *b)
{
 COMPARE_STRING_FIELD(idxname);
 COMPARE_NODE_FIELD(relation);
 COMPARE_STRING_FIELD(accessMethod);
 COMPARE_STRING_FIELD(tableSpace);
 COMPARE_NODE_FIELD(indexParams);
 COMPARE_NODE_FIELD(indexIncludingParams);
 COMPARE_NODE_FIELD(options);
 COMPARE_NODE_FIELD(whereClause);
 COMPARE_NODE_FIELD(excludeOpNames);
 COMPARE_STRING_FIELD(idxcomment);
 COMPARE_SCALAR_FIELD(indexOid);
 COMPARE_SCALAR_FIELD(oldNode);
 COMPARE_SCALAR_FIELD(unique);
 COMPARE_SCALAR_FIELD(primary);
 COMPARE_SCALAR_FIELD(isconstraint);
 COMPARE_SCALAR_FIELD(deferrable);
 COMPARE_SCALAR_FIELD(initdeferred);
 COMPARE_SCALAR_FIELD(transformed);
 COMPARE_SCALAR_FIELD(concurrent);
 COMPARE_SCALAR_FIELD(if_not_exists);
 COMPARE_SCALAR_FIELD(reset_default_tblspc);

 return 1;
}
