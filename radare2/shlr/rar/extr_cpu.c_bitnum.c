
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bits; } ;
typedef TYPE_1__ Bitbuf ;


 scalar_t__ bitget (TYPE_1__*,int) ;

__attribute__((used)) static int bitnum (Bitbuf *bb, int n, int c) {
 int i, ret = 0;
 if (n<bb->bits)
  for (i=0; i<c; i++)
   if (bitget (bb, n+i)>0)
    ret |= (1<<(c-i-1));
 return ret;
}
