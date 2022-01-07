
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;
typedef scalar_t__ mbedtls_ecp_group_id ;


 scalar_t__ MBEDTLS_ECP_DP_NONE ;
 scalar_t__ MBEDTLS_ECP_DP_SECP256R1 ;
 scalar_t__ atoi (char*) ;
 scalar_t__ ecp_curve (char const*) ;
 int fprintf (int ,char*,char*) ;
 int gen_key (int *,int,unsigned int,int,scalar_t__,int) ;
 int mbedtls_pk_free (int *) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int write_key (int *,char*,int) ;

int dokey(bool rsa, char **arg)
{
 mbedtls_pk_context key;
 unsigned int ksize = 512;
 int exp = 65537;
 char *path = ((void*)0);
 bool pem = 1;
 mbedtls_ecp_group_id curve = MBEDTLS_ECP_DP_SECP256R1;

 while (*arg && **arg == '-') {
  if (!strcmp(*arg, "-out") && arg[1]) {
   path = arg[1];
   arg++;
  } else if (!strcmp(*arg, "-3")) {
   exp = 3;
  } else if (!strcmp(*arg, "-der")) {
   pem = 0;
  }
  arg++;
 }

 if (*arg && rsa) {
  ksize = (unsigned int)atoi(*arg);
 } else if (*arg) {
  curve = ecp_curve((const char *)*arg);
  if (curve == MBEDTLS_ECP_DP_NONE) {
   fprintf(stderr, "error: invalid curve name: %s\n", *arg);
   return 1;
  }
 }

 gen_key(&key, rsa, ksize, exp, curve, pem);
 write_key(&key, path, pem);

 mbedtls_pk_free(&key);

 return 0;
}
