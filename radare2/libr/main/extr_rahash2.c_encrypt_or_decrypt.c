
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_2__ {scalar_t__ len; int buf; } ;
typedef int RCrypto ;


 int eprintf (char*,...) ;
 int free (int *) ;
 int r_crypto_final (int *,int *,int ) ;
 int r_crypto_free (int *) ;
 int * r_crypto_get_output (int *,int*) ;
 int * r_crypto_new () ;
 int r_crypto_set_iv (int *,int const*,int) ;
 scalar_t__ r_crypto_set_key (int *,int ,scalar_t__,int ,int) ;
 int r_crypto_update (int *,int const*,int) ;
 scalar_t__ r_crypto_use (int *,char const*) ;
 TYPE_1__ s ;
 int strcmp (char*,char const*) ;
 int write (int,int *,int) ;

__attribute__((used)) static int encrypt_or_decrypt(const char *algo, int direction, const char *hashstr, int hashstr_len, const ut8 *iv, int ivlen, int mode) {
 bool no_key_mode = !strcmp ("base64", algo) || !strcmp ("base91", algo) || !strcmp ("punycode", algo);
 if (no_key_mode || s.len > 0) {
  RCrypto *cry = r_crypto_new ();
  if (r_crypto_use (cry, algo)) {
   if (r_crypto_set_key (cry, s.buf, s.len, 0, direction)) {
    const char *buf = hashstr;
    int buflen = hashstr_len;

    if (iv && !r_crypto_set_iv (cry, iv, ivlen)) {
     eprintf ("Invalid IV.\n");
     return 0;
    }

    r_crypto_update (cry, (const ut8 *) buf, buflen);
    r_crypto_final (cry, ((void*)0), 0);

    int result_size = 0;
    ut8 *result = r_crypto_get_output (cry, &result_size);
    if (result) {
     write (1, result, result_size);
     free (result);
    }
   } else {
    eprintf ("Invalid key\n");
   }
   return 0;
  } else {
   eprintf ("Unknown %s algorithm '%s'\n", ((!direction)? "encryption": "decryption"), algo);
  }
  r_crypto_free (cry);
 } else {
  eprintf ("%s key not defined. Use -S [key]\n", ((!direction)? "Encryption": "Decryption"));
 }
 return 1;
}
