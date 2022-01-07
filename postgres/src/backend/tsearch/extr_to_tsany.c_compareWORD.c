
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pos; } ;
struct TYPE_4__ {TYPE_1__ pos; int len; int word; } ;
typedef TYPE_2__ ParsedWord ;


 int tsCompareString (int ,int ,int ,int ,int) ;

__attribute__((used)) static int
compareWORD(const void *a, const void *b)
{
 int res;

 res = tsCompareString(
        ((const ParsedWord *) a)->word, ((const ParsedWord *) a)->len,
        ((const ParsedWord *) b)->word, ((const ParsedWord *) b)->len,
        0);

 if (res == 0)
 {
  if (((const ParsedWord *) a)->pos.pos == ((const ParsedWord *) b)->pos.pos)
   return 0;

  res = (((const ParsedWord *) a)->pos.pos > ((const ParsedWord *) b)->pos.pos) ? 1 : -1;
 }

 return res;
}
