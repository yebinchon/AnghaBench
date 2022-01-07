
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CreateStmt ;


 int WRITE_NODE_TYPE (char*) ;
 int _outCreateStmtInfo (int ,int const*) ;

__attribute__((used)) static void
_outCreateStmt(StringInfo str, const CreateStmt *node)
{
 WRITE_NODE_TYPE("CREATESTMT");

 _outCreateStmtInfo(str, (const CreateStmt *) node);
}
