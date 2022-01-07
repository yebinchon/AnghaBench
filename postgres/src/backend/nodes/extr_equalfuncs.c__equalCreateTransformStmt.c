
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateTransformStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int fromsql ;
 int lang ;
 int replace ;
 int tosql ;
 int type_name ;

__attribute__((used)) static bool
_equalCreateTransformStmt(const CreateTransformStmt *a, const CreateTransformStmt *b)
{
 COMPARE_SCALAR_FIELD(replace);
 COMPARE_NODE_FIELD(type_name);
 COMPARE_STRING_FIELD(lang);
 COMPARE_NODE_FIELD(fromsql);
 COMPARE_NODE_FIELD(tosql);

 return 1;
}
