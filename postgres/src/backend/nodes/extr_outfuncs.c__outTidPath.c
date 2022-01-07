
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TidPath ;
typedef int StringInfo ;
typedef int Path ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outPathInfo (int ,int const*) ;
 int tidquals ;

__attribute__((used)) static void
_outTidPath(StringInfo str, const TidPath *node)
{
 WRITE_NODE_TYPE("TIDPATH");

 _outPathInfo(str, (const Path *) node);

 WRITE_NODE_FIELD(tidquals);
}
