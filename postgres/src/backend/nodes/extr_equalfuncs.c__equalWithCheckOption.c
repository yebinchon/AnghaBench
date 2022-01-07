
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WithCheckOption ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int cascaded ;
 int kind ;
 int polname ;
 int qual ;
 int relname ;

__attribute__((used)) static bool
_equalWithCheckOption(const WithCheckOption *a, const WithCheckOption *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_STRING_FIELD(relname);
 COMPARE_STRING_FIELD(polname);
 COMPARE_NODE_FIELD(qual);
 COMPARE_SCALAR_FIELD(cascaded);

 return 1;
}
