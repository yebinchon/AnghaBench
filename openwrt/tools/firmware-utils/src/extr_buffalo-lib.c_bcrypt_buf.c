
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcrypt_ctx {int dummy; } ;


 unsigned long BCRYPT_DEFAULT_STATE_LEN ;
 int BCRYPT_MAX_KEYLEN ;
 int bcrypt_finish (struct bcrypt_ctx*) ;
 int bcrypt_init (struct bcrypt_ctx*,unsigned char*,unsigned int,unsigned long) ;
 int bcrypt_process (struct bcrypt_ctx*,unsigned char*,unsigned char*,unsigned long) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 unsigned int strlen (char*) ;

int bcrypt_buf(unsigned char seed, unsigned char *key, unsigned char *src,
        unsigned char *dst, unsigned long len, int longstate)
{
 unsigned char bckey[BCRYPT_MAX_KEYLEN + 1];
 unsigned int keylen;
 struct bcrypt_ctx ctx;
 int ret;


 keylen = strlen((char *) key);
 bckey[0] = seed;
 memcpy(&bckey[1], key, keylen);

 keylen++;

 ret = bcrypt_init(&ctx, bckey, keylen,
     (longstate) ? len : BCRYPT_DEFAULT_STATE_LEN);
 if (ret)
  return ret;

 bcrypt_process(&ctx, src, dst, len);
 bcrypt_finish(&ctx);

 return 0;
}
