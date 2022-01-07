
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_MD ;


 int PXE_PGP_CORRUPT_DATA ;
 int PXE_PGP_UNSUPPORTED_HASH ;
 char* pgp_get_digest_name (int) ;
 int px_find_digest (char const*,int **) ;

int
pgp_load_digest(int code, PX_MD **res)
{
 int err;
 const char *name = pgp_get_digest_name(code);

 if (name == ((void*)0))
  return PXE_PGP_CORRUPT_DATA;

 err = px_find_digest(name, res);
 if (err == 0)
  return 0;

 return PXE_PGP_UNSUPPORTED_HASH;
}
