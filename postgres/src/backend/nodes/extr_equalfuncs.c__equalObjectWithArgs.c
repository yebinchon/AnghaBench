
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectWithArgs ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args_unspecified ;
 int objargs ;
 int objname ;

__attribute__((used)) static bool
_equalObjectWithArgs(const ObjectWithArgs *a, const ObjectWithArgs *b)
{
 COMPARE_NODE_FIELD(objname);
 COMPARE_NODE_FIELD(objargs);
 COMPARE_SCALAR_FIELD(args_unspecified);

 return 1;
}
