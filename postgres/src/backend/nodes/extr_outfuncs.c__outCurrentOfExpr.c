
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CurrentOfExpr ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int cursor_name ;
 int cursor_param ;
 int cvarno ;

__attribute__((used)) static void
_outCurrentOfExpr(StringInfo str, const CurrentOfExpr *node)
{
 WRITE_NODE_TYPE("CURRENTOFEXPR");

 WRITE_UINT_FIELD(cvarno);
 WRITE_STRING_FIELD(cursor_name);
 WRITE_INT_FIELD(cursor_param);
}
