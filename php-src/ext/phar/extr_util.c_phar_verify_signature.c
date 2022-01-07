
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef size_t zend_off_t ;
typedef int uint32_t ;
typedef int php_stream ;
typedef int digest ;
typedef int buf ;
typedef int PHP_SHA512_CTX ;
typedef int PHP_SHA256_CTX ;
typedef int PHP_SHA1_CTX ;
typedef int PHP_MD5_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (int *,int ) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_PKEY_free (int *) ;
 int EVP_VerifyFinal (int *,unsigned char*,size_t,int *) ;
 int EVP_VerifyInit (int *,int *) ;
 int EVP_VerifyUpdate (int *,unsigned char*,size_t) ;
 scalar_t__ EVP_sha1 () ;
 int FAILURE ;
 int * PEM_read_bio_PUBKEY (int *,int *,int *,int *) ;





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
 int PHP_STREAM_COPY_ALL ;
 int SEEK_SET ;
 int SUCCESS ;
 int ZSTR_LEN (int *) ;
 int * ZSTR_VAL (int *) ;
 int efree (char*) ;
 int memcmp (unsigned char*,char*,int) ;
 int module_registry ;
 int phar_call_openssl_signverify (int ,int *,size_t,int *,int ,char**,size_t*) ;
 size_t phar_hex_str (char const*,int,char**) ;
 int php_stream_close (int *) ;
 int * php_stream_copy_to_mem (int *,int ,int ) ;
 int * php_stream_open_wrapper (char*,char*,int ,int *) ;
 size_t php_stream_read (int *,char*,size_t) ;
 int php_stream_rewind (int *) ;
 int php_stream_seek (int *,int ,int ) ;
 int spprintf (char**,int ,char*,...) ;
 int zend_hash_str_exists (int *,char*,int) ;
 int zend_string_release_ex (int *,int ) ;

int phar_verify_signature(php_stream *fp, size_t end_of_phar, uint32_t sig_type, char *sig, size_t sig_len, char *fname, char **signature, size_t *signature_len, char **error)
{
 size_t read_size, len;
 zend_off_t read_len;
 unsigned char buf[1024];

 php_stream_rewind(fp);

 switch (sig_type) {
  case 131: {






   size_t tempsig;

   zend_string *pubkey = ((void*)0);
   char *pfile;
   php_stream *pfp;

   if (!zend_hash_str_exists(&module_registry, "openssl", sizeof("openssl")-1)) {
    if (error) {
     spprintf(error, 0, "openssl not loaded");
    }
    return FAILURE;
   }


   spprintf(&pfile, 0, "%s.pubkey", fname);
   pfp = php_stream_open_wrapper(pfile, "rb", 0, ((void*)0));
   efree(pfile);

   if (!pfp || !(pubkey = php_stream_copy_to_mem(pfp, PHP_STREAM_COPY_ALL, 0)) || !ZSTR_LEN(pubkey)) {
    if (pfp) {
     php_stream_close(pfp);
    }
    if (error) {
     spprintf(error, 0, "openssl public key could not be read");
    }
    return FAILURE;
   }

   php_stream_close(pfp);

   tempsig = sig_len;

   if (FAILURE == phar_call_openssl_signverify(0, fp, end_of_phar, pubkey ? ZSTR_VAL(pubkey) : ((void*)0), pubkey ? ZSTR_LEN(pubkey) : 0, &sig, &tempsig)) {
    if (pubkey) {
     zend_string_release_ex(pubkey, 0);
    }

    if (error) {
     spprintf(error, 0, "openssl signature could not be verified");
    }

    return FAILURE;
   }

   if (pubkey) {
    zend_string_release_ex(pubkey, 0);
   }

   sig_len = tempsig;
   *signature_len = phar_hex_str((const char*)sig, sig_len, signature);
  }
  break;
  case 128: {
   unsigned char digest[64];
   PHP_SHA512_CTX context;

   if (sig_len < sizeof(digest)) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   PHP_SHA512Init(&context);
   read_len = end_of_phar;

   if ((size_t)read_len > sizeof(buf)) {
    read_size = sizeof(buf);
   } else {
    read_size = (size_t)read_len;
   }

   while ((len = php_stream_read(fp, (char*)buf, read_size)) > 0) {
    PHP_SHA512Update(&context, buf, len);
    read_len -= (zend_off_t)len;
    if ((size_t)read_len < read_size) {
     read_size = (size_t)read_len;
    }
   }

   PHP_SHA512Final(digest, &context);

   if (memcmp(digest, sig, sizeof(digest))) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   *signature_len = phar_hex_str((const char*)digest, sizeof(digest), signature);
   break;
  }
  case 129: {
   unsigned char digest[32];
   PHP_SHA256_CTX context;

   if (sig_len < sizeof(digest)) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   PHP_SHA256Init(&context);
   read_len = end_of_phar;

   if ((size_t)read_len > sizeof(buf)) {
    read_size = sizeof(buf);
   } else {
    read_size = (size_t)read_len;
   }

   while ((len = php_stream_read(fp, (char*)buf, read_size)) > 0) {
    PHP_SHA256Update(&context, buf, len);
    read_len -= (zend_off_t)len;
    if ((size_t)read_len < read_size) {
     read_size = (size_t)read_len;
    }
   }

   PHP_SHA256Final(digest, &context);

   if (memcmp(digest, sig, sizeof(digest))) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   *signature_len = phar_hex_str((const char*)digest, sizeof(digest), signature);
   break;
  }
  case 130: {
   unsigned char digest[20];
   PHP_SHA1_CTX context;

   if (sig_len < sizeof(digest)) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   PHP_SHA1Init(&context);
   read_len = end_of_phar;

   if ((size_t)read_len > sizeof(buf)) {
    read_size = sizeof(buf);
   } else {
    read_size = (size_t)read_len;
   }

   while ((len = php_stream_read(fp, (char*)buf, read_size)) > 0) {
    PHP_SHA1Update(&context, buf, len);
    read_len -= (zend_off_t)len;
    if ((size_t)read_len < read_size) {
     read_size = (size_t)read_len;
    }
   }

   PHP_SHA1Final(digest, &context);

   if (memcmp(digest, sig, sizeof(digest))) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   *signature_len = phar_hex_str((const char*)digest, sizeof(digest), signature);
   break;
  }
  case 132: {
   unsigned char digest[16];
   PHP_MD5_CTX context;

   if (sig_len < sizeof(digest)) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   PHP_MD5Init(&context);
   read_len = end_of_phar;

   if ((size_t)read_len > sizeof(buf)) {
    read_size = sizeof(buf);
   } else {
    read_size = (size_t)read_len;
   }

   while ((len = php_stream_read(fp, (char*)buf, read_size)) > 0) {
    PHP_MD5Update(&context, buf, len);
    read_len -= (zend_off_t)len;
    if ((size_t)read_len < read_size) {
     read_size = (size_t)read_len;
    }
   }

   PHP_MD5Final(digest, &context);

   if (memcmp(digest, sig, sizeof(digest))) {
    if (error) {
     spprintf(error, 0, "broken signature");
    }
    return FAILURE;
   }

   *signature_len = phar_hex_str((const char*)digest, sizeof(digest), signature);
   break;
  }
  default:
   if (error) {
    spprintf(error, 0, "broken or unsupported signature");
   }
   return FAILURE;
 }
 return SUCCESS;
}
