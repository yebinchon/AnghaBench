
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ciph; } ;
struct TYPE_6__ {scalar_t__ ptr; } ;
struct TYPE_5__ {int block_size; } ;
typedef TYPE_2__ PX_Cipher ;
typedef TYPE_3__ OSSLCipher ;



__attribute__((used)) static unsigned
gen_ossl_block_size(PX_Cipher *c)
{
 OSSLCipher *od = (OSSLCipher *) c->ptr;

 return od->ciph->block_size;
}
