
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int InferenceElem ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int expr ;
 int infercollid ;
 int inferopclass ;

__attribute__((used)) static bool
_equalInferenceElem(const InferenceElem *a, const InferenceElem *b)
{
 COMPARE_NODE_FIELD(expr);
 COMPARE_SCALAR_FIELD(infercollid);
 COMPARE_SCALAR_FIELD(inferopclass);

 return 1;
}
