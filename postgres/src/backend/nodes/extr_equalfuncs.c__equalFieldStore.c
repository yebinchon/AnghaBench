
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FieldStore ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int fieldnums ;
 int newvals ;
 int resulttype ;

__attribute__((used)) static bool
_equalFieldStore(const FieldStore *a, const FieldStore *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_NODE_FIELD(newvals);
 COMPARE_NODE_FIELD(fieldnums);
 COMPARE_SCALAR_FIELD(resulttype);

 return 1;
}
