
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ProjectSetPath ;
typedef int Path ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int subpath ;

__attribute__((used)) static void
_outProjectSetPath(StringInfo str, const ProjectSetPath *node)
{
 WRITE_NODE_TYPE("PROJECTSETPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
}
