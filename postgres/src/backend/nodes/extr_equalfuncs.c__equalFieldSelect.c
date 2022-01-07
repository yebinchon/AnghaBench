
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FieldSelect ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int fieldnum ;
 int resultcollid ;
 int resulttype ;
 int resulttypmod ;

__attribute__((used)) static bool
_equalFieldSelect(const FieldSelect *a, const FieldSelect *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(fieldnum);
 COMPARE_SCALAR_FIELD(resulttype);
 COMPARE_SCALAR_FIELD(resulttypmod);
 COMPARE_SCALAR_FIELD(resultcollid);

 return 1;
}
