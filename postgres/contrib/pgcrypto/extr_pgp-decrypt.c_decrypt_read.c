
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;
typedef int PGP_CFB ;


 int pgp_cfb_decrypt (int *,int *,int,int *) ;
 int pullf_read (int *,int,int **) ;

__attribute__((used)) static int
decrypt_read(void *priv, PullFilter *src, int len,
    uint8 **data_p, uint8 *buf, int buflen)
{
 PGP_CFB *cfb = priv;
 uint8 *tmp;
 int res;

 res = pullf_read(src, len, &tmp);
 if (res > 0)
 {
  pgp_cfb_decrypt(cfb, tmp, res, buf);
  *data_p = buf;
 }
 return res;
}
