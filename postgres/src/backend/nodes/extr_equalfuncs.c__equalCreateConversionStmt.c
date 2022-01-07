
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateConversionStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int conversion_name ;
 int def ;
 int for_encoding_name ;
 int func_name ;
 int to_encoding_name ;

__attribute__((used)) static bool
_equalCreateConversionStmt(const CreateConversionStmt *a, const CreateConversionStmt *b)
{
 COMPARE_NODE_FIELD(conversion_name);
 COMPARE_STRING_FIELD(for_encoding_name);
 COMPARE_STRING_FIELD(to_encoding_name);
 COMPARE_NODE_FIELD(func_name);
 COMPARE_SCALAR_FIELD(def);

 return 1;
}
