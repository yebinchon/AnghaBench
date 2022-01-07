
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CurrentOfExpr ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int cursor_name ;
 int cursor_param ;
 int cvarno ;

__attribute__((used)) static bool
_equalCurrentOfExpr(const CurrentOfExpr *a, const CurrentOfExpr *b)
{
 COMPARE_SCALAR_FIELD(cvarno);
 COMPARE_STRING_FIELD(cursor_name);
 COMPARE_SCALAR_FIELD(cursor_param);

 return 1;
}
