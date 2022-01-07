
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ProjectionPath ;
typedef int Path ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int dummypp ;
 int subpath ;

__attribute__((used)) static void
_outProjectionPath(StringInfo str, const ProjectionPath *node)
{
 WRITE_NODE_TYPE("PROJECTIONPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(subpath);
 WRITE_BOOL_FIELD(dummypp);
}
