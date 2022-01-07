
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int A_Star ;


 int WRITE_NODE_TYPE (char*) ;

__attribute__((used)) static void
_outA_Star(StringInfo str, const A_Star *node)
{
 WRITE_NODE_TYPE("A_STAR");
}
