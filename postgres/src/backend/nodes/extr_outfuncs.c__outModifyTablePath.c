
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int ModifyTablePath ;


 int CmdType ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int _outPathInfo (int ,int const*) ;
 int canSetTag ;
 int epqParam ;
 int nominalRelation ;
 int onconflict ;
 int operation ;
 int partColsUpdated ;
 int resultRelations ;
 int returningLists ;
 int rootRelation ;
 int rowMarks ;
 int subpaths ;
 int subroots ;
 int withCheckOptionLists ;

__attribute__((used)) static void
_outModifyTablePath(StringInfo str, const ModifyTablePath *node)
{
 WRITE_NODE_TYPE("MODIFYTABLEPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_ENUM_FIELD(operation, CmdType);
 WRITE_BOOL_FIELD(canSetTag);
 WRITE_UINT_FIELD(nominalRelation);
 WRITE_UINT_FIELD(rootRelation);
 WRITE_BOOL_FIELD(partColsUpdated);
 WRITE_NODE_FIELD(resultRelations);
 WRITE_NODE_FIELD(subpaths);
 WRITE_NODE_FIELD(subroots);
 WRITE_NODE_FIELD(withCheckOptionLists);
 WRITE_NODE_FIELD(returningLists);
 WRITE_NODE_FIELD(rowMarks);
 WRITE_NODE_FIELD(onconflict);
 WRITE_INT_FIELD(epqParam);
}
