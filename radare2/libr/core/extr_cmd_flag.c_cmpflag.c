
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; } ;
typedef TYPE_1__ RFlagItem ;



__attribute__((used)) static int cmpflag(const void *_a, const void *_b) {
 const RFlagItem *flag1 = _a , *flag2 = _b;
 return (flag1->offset - flag2->offset);
}
