
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int MAX_LEN ;
 int RSANUMBYTES ;
 int RSA_verify (int *,void*,int ,char*,int) ;
 int SHA_DIGEST_SIZE ;
 int SHA_hash (int*,int,char*) ;
 scalar_t__ buf ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (scalar_t__,int,int ,int *) ;
 int printf (char*,...) ;
 int rsa_key ;

int main() {
  FILE *f = fopen("../obj/panda.bin", "rb");
  int tlen = fread(buf, 1, MAX_LEN, f);
  fclose(f);
  printf("read %d\n", tlen);
  uint32_t *_app_start = (uint32_t *)buf;

  int len = _app_start[0];
  char digest[SHA_DIGEST_SIZE];
  SHA_hash(&_app_start[1], len-4, digest);
  printf("SHA hash done\n");

  if (!RSA_verify(&rsa_key, ((void*)&_app_start[0]) + len, RSANUMBYTES, digest, SHA_DIGEST_SIZE)) {
    printf("RSA fail\n");
  } else {
    printf("RSA match!!!\n");
  }

  return 0;
}
