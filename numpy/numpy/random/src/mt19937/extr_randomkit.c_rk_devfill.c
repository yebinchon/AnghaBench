
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_error ;
typedef int HCRYPTPROV ;
typedef int FILE ;
typedef scalar_t__ BOOL ;


 int CRYPT_VERIFYCONTEXT ;
 int CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptGenRandom (int ,size_t,unsigned char*) ;
 int CryptReleaseContext (int ,int ) ;
 int PROV_RSA_FULL ;
 int RK_DEV_RANDOM ;
 int RK_DEV_URANDOM ;
 int RK_ENODEV ;
 int RK_NOERR ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (void*,size_t,int,int *) ;

rk_error rk_devfill(void *buffer, size_t size, int strong) {

  FILE *rfile;
  int done;

  if (strong) {
    rfile = fopen(RK_DEV_RANDOM, "rb");
  } else {
    rfile = fopen(RK_DEV_URANDOM, "rb");
  }
  if (rfile == ((void*)0)) {
    return RK_ENODEV;
  }
  done = fread(buffer, size, 1, rfile);
  fclose(rfile);
  if (done) {
    return RK_NOERR;
  }
  return RK_ENODEV;
}
