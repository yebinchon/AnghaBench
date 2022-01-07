
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int NestPath ;
typedef int JoinPath ;


 int WRITE_NODE_TYPE (char*) ;
 int _outJoinPathInfo (int ,int const*) ;

__attribute__((used)) static void
_outNestPath(StringInfo str, const NestPath *node)
{
 WRITE_NODE_TYPE("NESTPATH");

 _outJoinPathInfo(str, (const JoinPath *) node);
}
