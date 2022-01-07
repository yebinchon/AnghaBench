
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PushFilter ;
typedef int PX_MD ;


 int PGP_DIGEST_SHA1 ;
 int pgp_load_digest (int ,int **) ;

__attribute__((used)) static int
mdc_init(PushFilter *dst, void *init_arg, void **priv_p)
{
 int res;
 PX_MD *md;

 res = pgp_load_digest(PGP_DIGEST_SHA1, &md);
 if (res < 0)
  return res;

 *priv_p = md;
 return 0;
}
