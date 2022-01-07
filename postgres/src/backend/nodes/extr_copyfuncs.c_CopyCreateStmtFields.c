
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateStmt ;


 int COPY_NODE_FIELD (int ) ;
 int COPY_SCALAR_FIELD (int ) ;
 int COPY_STRING_FIELD (int ) ;
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
CopyCreateStmtFields(const CreateStmt *from, CreateStmt *newnode)
{
 COPY_NODE_FIELD(relation);
 COPY_NODE_FIELD(tableElts);
 COPY_NODE_FIELD(inhRelations);
 COPY_NODE_FIELD(partspec);
 COPY_NODE_FIELD(partbound);
 COPY_NODE_FIELD(ofTypename);
 COPY_NODE_FIELD(constraints);
 COPY_NODE_FIELD(options);
 COPY_SCALAR_FIELD(oncommit);
 COPY_STRING_FIELD(tablespacename);
 COPY_STRING_FIELD(accessMethod);
 COPY_SCALAR_FIELD(if_not_exists);
}
