
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CreateStmt ;


 int OnCommitAction ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_STRING_FIELD (int ) ;
 int accessMethod ;
 int constraints ;
 int if_not_exists ;
 int inhRelations ;
 int ofTypename ;
 int oncommit ;
 int options ;
 int partbound ;
 int partspec ;
 int relation ;
 int tableElts ;
 int tablespacename ;

__attribute__((used)) static void
_outCreateStmtInfo(StringInfo str, const CreateStmt *node)
{
 WRITE_NODE_FIELD(relation);
 WRITE_NODE_FIELD(tableElts);
 WRITE_NODE_FIELD(inhRelations);
 WRITE_NODE_FIELD(partspec);
 WRITE_NODE_FIELD(partbound);
 WRITE_NODE_FIELD(ofTypename);
 WRITE_NODE_FIELD(constraints);
 WRITE_NODE_FIELD(options);
 WRITE_ENUM_FIELD(oncommit, OnCommitAction);
 WRITE_STRING_FIELD(tablespacename);
 WRITE_STRING_FIELD(accessMethod);
 WRITE_BOOL_FIELD(if_not_exists);
}
