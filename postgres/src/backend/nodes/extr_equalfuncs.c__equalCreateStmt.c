
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
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

__attribute__((used)) static bool
_equalCreateStmt(const CreateStmt *a, const CreateStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(tableElts);
 COMPARE_NODE_FIELD(inhRelations);
 COMPARE_NODE_FIELD(partbound);
 COMPARE_NODE_FIELD(partspec);
 COMPARE_NODE_FIELD(ofTypename);
 COMPARE_NODE_FIELD(constraints);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(oncommit);
 COMPARE_STRING_FIELD(tablespacename);
 COMPARE_STRING_FIELD(accessMethod);
 COMPARE_SCALAR_FIELD(if_not_exists);

 return 1;
}
