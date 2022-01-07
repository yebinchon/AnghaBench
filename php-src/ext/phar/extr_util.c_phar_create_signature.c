
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_3__ {unsigned char* signature; int sig_flags; int sig_len; int fname; } ;
typedef TYPE_1__ phar_archive_data ;
typedef int buf ;
typedef int PHP_SHA512_CTX ;
typedef int PHP_SHA256_CTX ;
typedef int PHP_SHA1_CTX ;
typedef int PHP_MD5_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (int ,int ) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_PKEY_free (int *) ;
 unsigned int EVP_PKEY_size (int *) ;
 int EVP_SignFinal (int *,unsigned char*,unsigned int*,int *) ;
 int EVP_SignInit (int *,int ) ;
 int EVP_SignUpdate (int *,unsigned char*,size_t) ;
 int EVP_sha1 () ;
 int FAILURE ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,char*) ;
 int PHAR_G (int ) ;





 int PHP_MD5Final (unsigned char*,int *) ;
 int PHP_MD5Init (int *) ;
 int PHP_MD5Update (int *,unsigned char*,size_t) ;
 int PHP_SHA1Final (unsigned char*,int *) ;
 int PHP_SHA1Init (int *) ;
 int PHP_SHA1Update (int *,unsigned char*,size_t) ;
 int PHP_SHA256Final (unsigned char*,int *) ;
 int PHP_SHA256Init (int *) ;
 int PHP_SHA256Update (int *,unsigned char*,size_t) ;
 int PHP_SHA512Final (unsigned char*,int *) ;
 int PHP_SHA512Init (int *) ;
 int PHP_SHA512Update (int *,unsigned char*,size_t) ;
 int SEEK_END ;
 int SUCCESS ;
 int efree (unsigned char*) ;
 unsigned char* emalloc (unsigned int) ;
 char* estrndup (char*,int) ;
 int openssl_privatekey ;
 int openssl_privatekey_len ;
 int phar_call_openssl_signverify (int,int *,int ,int ,int ,char**,size_t*) ;
 int phar_hex_str (char const*,size_t,unsigned char**) ;
 size_t php_stream_read (int *,char*,int) ;
 int php_stream_rewind (int *) ;
 int php_stream_seek (int *,int ,int ) ;
 int php_stream_tell (int *) ;
 int spprintf (char**,int ,char*,...) ;

int phar_create_signature(phar_archive_data *phar, php_stream *fp, char **signature, size_t *signature_length, char **error)
{
 unsigned char buf[1024];
 size_t sig_len;

 php_stream_rewind(fp);

 if (phar->signature) {
  efree(phar->signature);
  phar->signature = ((void*)0);
 }

 switch(phar->sig_flags) {
  case 128: {
   unsigned char digest[64];
   PHP_SHA512_CTX context;

   PHP_SHA512Init(&context);

   while ((sig_len = php_stream_read(fp, (char*)buf, sizeof(buf))) > 0) {
    PHP_SHA512Update(&context, buf, sig_len);
   }

   PHP_SHA512Final(digest, &context);
   *signature = estrndup((char *) digest, 64);
   *signature_length = 64;
   break;
  }
  case 129: {
   unsigned char digest[32];
   PHP_SHA256_CTX context;

   PHP_SHA256Init(&context);

   while ((sig_len = php_stream_read(fp, (char*)buf, sizeof(buf))) > 0) {
    PHP_SHA256Update(&context, buf, sig_len);
   }

   PHP_SHA256Final(digest, &context);
   *signature = estrndup((char *) digest, 32);
   *signature_length = 32;
   break;
  }
  case 131: {
   unsigned char *sigbuf;
   size_t siglen;
   sigbuf = ((void*)0);
   siglen = 0;
   php_stream_seek(fp, 0, SEEK_END);

   if (FAILURE == phar_call_openssl_signverify(1, fp, php_stream_tell(fp), PHAR_G(openssl_privatekey), PHAR_G(openssl_privatekey_len), (char **)&sigbuf, &siglen)) {
    if (error) {
     spprintf(error, 0, "unable to write phar \"%s\" with requested openssl signature", phar->fname);
    }
    return FAILURE;
   }

   *signature = (char *) sigbuf;
   *signature_length = siglen;
  }
  break;
  default:
   phar->sig_flags = 130;
  case 130: {
   unsigned char digest[20];
   PHP_SHA1_CTX context;

   PHP_SHA1Init(&context);

   while ((sig_len = php_stream_read(fp, (char*)buf, sizeof(buf))) > 0) {
    PHP_SHA1Update(&context, buf, sig_len);
   }

   PHP_SHA1Final(digest, &context);
   *signature = estrndup((char *) digest, 20);
   *signature_length = 20;
   break;
  }
  case 132: {
   unsigned char digest[16];
   PHP_MD5_CTX context;

   PHP_MD5Init(&context);

   while ((sig_len = php_stream_read(fp, (char*)buf, sizeof(buf))) > 0) {
    PHP_MD5Update(&context, buf, sig_len);
   }

   PHP_MD5Final(digest, &context);
   *signature = estrndup((char *) digest, 16);
   *signature_length = 16;
   break;
  }
 }

 phar->sig_len = phar_hex_str((const char *)*signature, *signature_length, &phar->signature);
 return SUCCESS;
}
