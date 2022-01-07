
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FunctionParameter ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int argType ;
 int defexpr ;
 int mode ;
 int name ;

__attribute__((used)) static bool
_equalFunctionParameter(const FunctionParameter *a, const FunctionParameter *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(argType);
 COMPARE_SCALAR_FIELD(mode);
 COMPARE_NODE_FIELD(defexpr);

 return 1;
}
