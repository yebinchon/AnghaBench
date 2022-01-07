
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int IntoClause ;


 int OnCommitAction ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int accessMethod ;
 int colNames ;
 int onCommit ;
 int options ;
 int rel ;
 int skipData ;
 int tableSpaceName ;
 int viewQuery ;

__attribute__((used)) static void
_outIntoClause(StringInfo str, const IntoClause *node)
{
 WRITE_NODE_TYPE("INTOCLAUSE");

 WRITE_NODE_FIELD(rel);
 WRITE_NODE_FIELD(colNames);
 WRITE_STRING_FIELD(accessMethod);
 WRITE_NODE_FIELD(options);
 WRITE_ENUM_FIELD(onCommit, OnCommitAction);
 WRITE_STRING_FIELD(tableSpaceName);
 WRITE_NODE_FIELD(viewQuery);
 WRITE_BOOL_FIELD(skipData);
}
