
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int A_Indirection ;


 int COMPARE_NODE_FIELD (int ) ;
 int arg ;
 int indirection ;

__attribute__((used)) static bool
_equalA_Indirection(const A_Indirection *a, const A_Indirection *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_NODE_FIELD(indirection);

 return 1;
}
