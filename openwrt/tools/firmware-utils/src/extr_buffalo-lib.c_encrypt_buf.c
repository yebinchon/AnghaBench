
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct enc_param {unsigned char seed; size_t datalen; size_t csum; int longstate; int key; scalar_t__ version; scalar_t__ product; scalar_t__ magic; } ;


 int bcrypt_buf (unsigned char,int ,unsigned char*,unsigned char*,size_t,int ) ;
 int memcpy (unsigned char*,scalar_t__,size_t) ;
 int put_be32 (unsigned char*,size_t) ;
 size_t strlen (char*) ;

int encrypt_buf(struct enc_param *ep, unsigned char *hdr,
  unsigned char *data)
{
 unsigned char *p;
 uint32_t len;
 int err;
 int ret = -1;
 unsigned char s;

 p = (unsigned char *) hdr;


 len = strlen((char *) ep->magic) + 1;
 memcpy(p, ep->magic, len);
 p += len;


 *p++ = ep->seed;


 len = strlen((char *) ep->product) + 1;
 put_be32(p, len);
 p += sizeof(uint32_t);


 memcpy(p, ep->product, len);
 err = bcrypt_buf(ep->seed, ep->key, p, p, len, ep->longstate);
 if (err)
  goto out;
 s = *p;
 p += len;


 len = strlen((char *) ep->version) + 1;
 put_be32(p, len);
 p += sizeof(uint32_t);


 memcpy(p, ep->version, len);
 err = bcrypt_buf(s, ep->key, p, p, len, ep->longstate);
 if (err)
  goto out;
 s = *p;
 p += len;


 put_be32(p, ep->datalen);


 err = bcrypt_buf(s, ep->key, data, data, ep->datalen, ep->longstate);
 if (err)
  goto out;


 put_be32(&data[ep->datalen], ep->csum);

 ret = 0;

out:
 return ret;
}
