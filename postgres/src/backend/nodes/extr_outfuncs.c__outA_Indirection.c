
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int A_Indirection ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int arg ;
 int indirection ;

__attribute__((used)) static void
_outA_Indirection(StringInfo str, const A_Indirection *node)
{
 WRITE_NODE_TYPE("A_INDIRECTION");

 WRITE_NODE_FIELD(arg);
 WRITE_NODE_FIELD(indirection);
}
