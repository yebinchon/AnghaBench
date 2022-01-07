
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int* out; } ;
typedef TYPE_1__ Bitbuf ;



__attribute__((used)) static int bitget(Bitbuf *bb, int bit) {
 if (bit>=bb->bits) return -1;
 return (bb->out[bit/8] & (1<<((bit%8))))? 1: 0;
}
