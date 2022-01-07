
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeFunction ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int alias ;
 int coldeflist ;
 int functions ;
 int is_rowsfrom ;
 int lateral ;
 int ordinality ;

__attribute__((used)) static bool
_equalRangeFunction(const RangeFunction *a, const RangeFunction *b)
{
 COMPARE_SCALAR_FIELD(lateral);
 COMPARE_SCALAR_FIELD(ordinality);
 COMPARE_SCALAR_FIELD(is_rowsfrom);
 COMPARE_NODE_FIELD(functions);
 COMPARE_NODE_FIELD(alias);
 COMPARE_NODE_FIELD(coldeflist);

 return 1;
}
