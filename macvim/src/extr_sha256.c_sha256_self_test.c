
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int output ;
typedef int context_sha256_T ;
typedef int char_u ;


 int FAIL ;
 int OK ;
 int STRCPY (char*,int*) ;
 scalar_t__ STRLEN (scalar_t__) ;
 scalar_t__ memcmp (char*,int ,int) ;
 int* sha256_bytes (int*,int,int *,int ) ;
 int sha256_finish (int *,int*) ;
 int sha256_start (int *) ;
 int sha256_update (int *,int*,int) ;
 scalar_t__* sha_self_test_msg ;
 int * sha_self_test_vector ;
 int sprintf (char*,char*,int) ;
 int vim_memset (int*,char,int) ;

int
sha256_self_test()
{
    int i, j;
    char output[65];
    context_sha256_T ctx;
    char_u buf[1000];
    char_u sha256sum[32];
    static int failures = 0;
    char_u *hexit;
    static int sha256_self_tested = 0;

    if (sha256_self_tested > 0)
 return failures > 0 ? FAIL : OK;
    sha256_self_tested = 1;

    for (i = 0; i < 3; i++)
    {
 if (i < 2)
 {
     hexit = sha256_bytes((char_u *)sha_self_test_msg[i],
      (int)STRLEN(sha_self_test_msg[i]),
      ((void*)0), 0);
     STRCPY(output, hexit);
 }
 else
 {
     sha256_start(&ctx);
     vim_memset(buf, 'a', 1000);
     for (j = 0; j < 1000; j++)
  sha256_update(&ctx, (char_u *)buf, 1000);
     sha256_finish(&ctx, sha256sum);
     for (j = 0; j < 32; j++)
  sprintf(output + j * 2, "%02x", sha256sum[j]);
 }
 if (memcmp(output, sha_self_test_vector[i], 64))
 {
     failures++;
     output[sizeof(output) - 1] = '\0';

 }
    }
    return failures > 0 ? FAIL : OK;
}
