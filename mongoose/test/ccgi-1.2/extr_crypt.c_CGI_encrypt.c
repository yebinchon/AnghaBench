
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 char* CGI_encode_base64 (unsigned char*,int) ;
 int DIGEST_SIZE ;
 int EVP_BytesToKey (int ,int ,unsigned char*,unsigned char*,int ,int,unsigned char*,unsigned char*) ;
 int EVP_EncryptFinal (int *,unsigned char*,int*) ;
 int EVP_EncryptInit (int *,int ,unsigned char*,unsigned char*) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,void const*,int) ;
 int EVP_MAX_BLOCK_LENGTH ;
 int EVP_MAX_IV_LENGTH ;
 int EVP_MAX_KEY_LENGTH ;
 int EVP_aes_256_cbc () ;
 int EVP_sha1 () ;
 int SALT_SIZE ;
 int digest (void const*,int,char const*,unsigned char*,unsigned char*) ;
 int free (unsigned char*) ;
 int init_salt (unsigned char*) ;
 unsigned char* malloc (int) ;
 int strlen (char const*) ;

char *
CGI_encrypt(const void *p, int len, const char *password) {
    EVP_CIPHER_CTX ctx;
    unsigned char md[DIGEST_SIZE];
    unsigned char iv[EVP_MAX_IV_LENGTH];
    unsigned char key[EVP_MAX_KEY_LENGTH];
    unsigned char *out;
    char *b64;
    int offset, rlen;

    if (p == 0 || len <= 0 || password == 0 || *password == 0) {
        return 0;
    }
    out = malloc(SALT_SIZE + DIGEST_SIZE + len + EVP_MAX_BLOCK_LENGTH);
    init_salt(out);
    digest(p, len, password, out, md);
    EVP_BytesToKey(EVP_aes_256_cbc(), EVP_sha1(), out,
        (unsigned char *) password, strlen(password), 1, key, iv);
    EVP_EncryptInit(&ctx, EVP_aes_256_cbc(), key, iv);
    offset = SALT_SIZE;
    EVP_EncryptUpdate(&ctx, out + offset, &rlen, md, DIGEST_SIZE);
    offset += rlen;
    EVP_EncryptUpdate(&ctx, out + offset, &rlen, p, len);
    offset += rlen;
    EVP_EncryptFinal(&ctx, out + offset, &rlen);
    b64 = CGI_encode_base64(out, offset + rlen);
    free(out);
    return b64;
}
