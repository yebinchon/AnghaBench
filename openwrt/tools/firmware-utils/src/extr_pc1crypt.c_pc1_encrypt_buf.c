
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc1_ctx {int dummy; } ;


 unsigned char pc1_encrypt (struct pc1_ctx*,unsigned char) ;

__attribute__((used)) static void pc1_encrypt_buf(struct pc1_ctx *pc1, unsigned char *buf,
       unsigned len)
{
 unsigned i;

 for (i = 0; i < len; i++)
  buf[i] = pc1_encrypt(pc1, buf[i]);
}
