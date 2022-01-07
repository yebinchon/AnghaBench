
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int* out; } ;
typedef TYPE_1__ Bitbuf ;



__attribute__((used)) static void bitadd(Bitbuf *bb, unsigned int v, int n) {
 int i, b, bit;
 for (i=0; i<n; i++, bb->bits++) {
  b = (bb->bits+i)/8;
  bit = (bb->bits+i)%8;

  if (!bit) bb->out[b] = 0;


  if (v&(1<<(n-i-1))) bb->out[b] |= 1<<bit;

 }

}
