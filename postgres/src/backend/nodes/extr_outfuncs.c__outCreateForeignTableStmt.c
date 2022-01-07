
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CreateStmt ;
typedef int CreateForeignTableStmt ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int _outCreateStmtInfo (int ,int const*) ;
 int options ;
 int servername ;

__attribute__((used)) static void
_outCreateForeignTableStmt(StringInfo str, const CreateForeignTableStmt *node)
{
 WRITE_NODE_TYPE("CREATEFOREIGNTABLESTMT");

 _outCreateStmtInfo(str, (const CreateStmt *) node);

 WRITE_STRING_FIELD(servername);
 WRITE_NODE_FIELD(options);
}
