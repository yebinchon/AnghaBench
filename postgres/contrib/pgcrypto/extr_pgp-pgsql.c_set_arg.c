
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_expect {int expect; void* unicode_mode; void* compress_algo; void* s2k_cipher_algo; int s2k_digest_algo; void* s2k_count; void* s2k_mode; void* use_sess_key; void* disable_mdc; void* cipher_algo; void* debug; } ;
typedef int PGP_Context ;


 int PXE_ARGUMENT_ERROR ;
 void* atoi (char*) ;
 int pgp_disable_mdc (int *,void*) ;
 void* pgp_get_cipher_code (char*) ;
 int pgp_get_digest_code (char*) ;
 int pgp_set_cipher_algo (int *,char*) ;
 int pgp_set_compress_algo (int *,void*) ;
 int pgp_set_compress_level (int *,void*) ;
 int pgp_set_convert_crlf (int *,void*) ;
 int pgp_set_s2k_cipher_algo (int *,char*) ;
 int pgp_set_s2k_count (int *,void*) ;
 int pgp_set_s2k_digest_algo (int *,char*) ;
 int pgp_set_s2k_mode (int *,void*) ;
 int pgp_set_sess_key (int *,void*) ;
 int pgp_set_unicode_mode (int *,void*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
set_arg(PGP_Context *ctx, char *key, char *val,
  struct debug_expect *ex)
{
 int res = 0;

 if (strcmp(key, "cipher-algo") == 0)
  res = pgp_set_cipher_algo(ctx, val);
 else if (strcmp(key, "disable-mdc") == 0)
  res = pgp_disable_mdc(ctx, atoi(val));
 else if (strcmp(key, "sess-key") == 0)
  res = pgp_set_sess_key(ctx, atoi(val));
 else if (strcmp(key, "s2k-mode") == 0)
  res = pgp_set_s2k_mode(ctx, atoi(val));
 else if (strcmp(key, "s2k-count") == 0)
  res = pgp_set_s2k_count(ctx, atoi(val));
 else if (strcmp(key, "s2k-digest-algo") == 0)
  res = pgp_set_s2k_digest_algo(ctx, val);
 else if (strcmp(key, "s2k-cipher-algo") == 0)
  res = pgp_set_s2k_cipher_algo(ctx, val);
 else if (strcmp(key, "compress-algo") == 0)
  res = pgp_set_compress_algo(ctx, atoi(val));
 else if (strcmp(key, "compress-level") == 0)
  res = pgp_set_compress_level(ctx, atoi(val));
 else if (strcmp(key, "convert-crlf") == 0)
  res = pgp_set_convert_crlf(ctx, atoi(val));
 else if (strcmp(key, "unicode-mode") == 0)
  res = pgp_set_unicode_mode(ctx, atoi(val));





 else if (ex != ((void*)0) && strcmp(key, "debug") == 0)
  ex->debug = atoi(val);
 else if (ex != ((void*)0) && strcmp(key, "expect-cipher-algo") == 0)
 {
  ex->expect = 1;
  ex->cipher_algo = pgp_get_cipher_code(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-disable-mdc") == 0)
 {
  ex->expect = 1;
  ex->disable_mdc = atoi(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-sess-key") == 0)
 {
  ex->expect = 1;
  ex->use_sess_key = atoi(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-s2k-mode") == 0)
 {
  ex->expect = 1;
  ex->s2k_mode = atoi(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-s2k-count") == 0)
 {
  ex->expect = 1;
  ex->s2k_count = atoi(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-s2k-digest-algo") == 0)
 {
  ex->expect = 1;
  ex->s2k_digest_algo = pgp_get_digest_code(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-s2k-cipher-algo") == 0)
 {
  ex->expect = 1;
  ex->s2k_cipher_algo = pgp_get_cipher_code(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-compress-algo") == 0)
 {
  ex->expect = 1;
  ex->compress_algo = atoi(val);
 }
 else if (ex != ((void*)0) && strcmp(key, "expect-unicode-mode") == 0)
 {
  ex->expect = 1;
  ex->unicode_mode = atoi(val);
 }
 else
  res = PXE_ARGUMENT_ERROR;

 return res;
}
