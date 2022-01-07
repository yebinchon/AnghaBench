
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Path ;
typedef int ForeignPath ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int fdw_outerpath ;
 int fdw_private ;

__attribute__((used)) static void
_outForeignPath(StringInfo str, const ForeignPath *node)
{
 WRITE_NODE_TYPE("FOREIGNPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(fdw_outerpath);
 WRITE_NODE_FIELD(fdw_private);
}
