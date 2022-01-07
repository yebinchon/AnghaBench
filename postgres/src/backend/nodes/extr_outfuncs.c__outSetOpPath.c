
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SetOpPath ;
typedef int Path ;


 int SetOpCmd ;
 int SetOpStrategy ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int cmd ;
 int distinctList ;
 int firstFlag ;
 int flagColIdx ;
 int numGroups ;
 int strategy ;
 int subpath ;

__attribute__((used)) static void
_outSetOpPath(StringInfo str, const SetOpPath *node)
{
 WRITE_NODE_TYPE("SETOPPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_ENUM_FIELD(cmd, SetOpCmd);
 WRITE_ENUM_FIELD(strategy, SetOpStrategy);
 WRITE_NODE_FIELD(distinctList);
 WRITE_INT_FIELD(flagColIdx);
 WRITE_INT_FIELD(firstFlag);
 WRITE_FLOAT_FIELD(numGroups, "%.0f");
}
