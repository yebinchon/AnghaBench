
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Bitmapset ;


 int appendStringInfo (int ,char*,int) ;
 int appendStringInfoChar (int ,char) ;
 int bms_next_member (int const*,int) ;

void
outBitmapset(StringInfo str, const Bitmapset *bms)
{
 int x;

 appendStringInfoChar(str, '(');
 appendStringInfoChar(str, 'b');
 x = -1;
 while ((x = bms_next_member(bms, x)) >= 0)
  appendStringInfo(str, " %d", x);
 appendStringInfoChar(str, ')');
}
