
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct enc_param {unsigned char* magic; unsigned char seed; unsigned char* product; unsigned char* version; int datalen; int csum; int longstate; int key; } ;
typedef unsigned long ssize_t ;


 int CHECKLEN (int) ;
 int ENC_MAGIC_LEN ;
 int ENC_PRODUCT_LEN ;
 int ENC_VERSION_LEN ;
 int INCP () ;
 int bcrypt_buf (unsigned char,int ,unsigned char*,unsigned char*,int,int ) ;
 int buffalo_csum (int,unsigned char*,int) ;
 int check_magic (unsigned char*) ;
 void* get_be32 (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

int decrypt_buf(struct enc_param *ep, unsigned char *data,
  unsigned long datalen)
{
 unsigned char *p;
 uint32_t prod_len;
 uint32_t ver_len;
 uint32_t len;
 uint32_t csum;
 ssize_t remain;
 int err;
 int ret = -1;
 remain = datalen;
 p = data;

 do { len = (ENC_MAGIC_LEN); if (remain < len) { goto out; } } while (0);
 err = check_magic(p);
 if (err)
  goto out;
 memcpy(ep->magic, p, ENC_MAGIC_LEN);
 do { p += len; remain -= len; } while (0);

 do { len = (1); if (remain < len) { goto out; } } while (0);
 ep->seed = *p;
 do { p += len; remain -= len; } while (0);

 do { len = (sizeof(uint32_t)); if (remain < len) { goto out; } } while (0);
 prod_len = get_be32(p);
 if (prod_len > ENC_PRODUCT_LEN)
  goto out;
 do { p += len; remain -= len; } while (0);

 do { len = (prod_len); if (remain < len) { goto out; } } while (0);
 memcpy(ep->product, p, prod_len);
 do { p += len; remain -= len; } while (0);

 do { len = (sizeof(uint32_t)); if (remain < len) { goto out; } } while (0);
 ver_len = get_be32(p);
 if (ver_len > ENC_VERSION_LEN)
  goto out;
 do { p += len; remain -= len; } while (0);

 do { len = (ver_len); if (remain < len) { goto out; } } while (0);
 memcpy(ep->version, p, ver_len);
 do { p += len; remain -= len; } while (0);

 do { len = (sizeof(uint32_t)); if (remain < len) { goto out; } } while (0);
 ep->datalen = get_be32(p);
 do { p += len; remain -= len; } while (0);


 do { len = (ep->datalen); if (remain < len) { goto out; } } while (0);
 err = bcrypt_buf(ep->version[0], ep->key, p, data, ep->datalen,
    ep->longstate);
 if (err)
  goto out;
 do { p += len; remain -= len; } while (0);

 do { len = (sizeof(uint32_t)); if (remain < len) { goto out; } } while (0);
 ep->csum = get_be32(p);
 do { p += len; remain -= len; } while (0);

 csum = buffalo_csum(ep->datalen, data, ep->datalen);
 if (csum != ep->csum)
  goto out;


 err = bcrypt_buf(ep->product[0], ep->key, ep->version, ep->version,
    ver_len, ep->longstate);
 if (err)
  goto out;


 err = bcrypt_buf(ep->seed, ep->key, ep->product, ep->product, prod_len,
    ep->longstate);
 if (err)
  goto out;

 ret = 0;
out:
 return ret;



}
