
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PullFilter ;
typedef void PGP_CFB ;



__attribute__((used)) static int
decrypt_init(void **priv_p, void *arg, PullFilter *src)
{
 PGP_CFB *cfb = arg;

 *priv_p = cfb;


 return 4096;
}
