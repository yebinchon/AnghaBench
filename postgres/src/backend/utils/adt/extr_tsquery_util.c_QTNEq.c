
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int sign; } ;
typedef TYPE_1__ QTNode ;


 scalar_t__ QTNodeCompare (TYPE_1__*,TYPE_1__*) ;

bool
QTNEq(QTNode *a, QTNode *b)
{
 uint32 sign = a->sign & b->sign;

 if (!(sign == a->sign && sign == b->sign))
  return 0;

 return (QTNodeCompare(a, b) == 0) ? 1 : 0;
}
