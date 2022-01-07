
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out_buf ;
typedef int buf_perm ;
typedef int buf ;
typedef int ascii_salt ;
typedef int ascii_magic ;
typedef int EVP_MD_CTX ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,...) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_md5 () ;
 int MD5_DIGEST_LENGTH ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int OPENSSL_strlcat (char*,...) ;
 int OPENSSL_strlcpy (char*,char const*,int) ;
 int ascii2ebcdic (char*,char*,int) ;
 unsigned char* ascii_dollar ;
 int assert (int) ;
 void** cov_2char ;
 int ebcdic2ascii (char*,char*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static char *md5crypt(const char *passwd, const char *magic, const char *salt)
{

    static char out_buf[6 + 9 + 24 + 2];
    unsigned char buf[MD5_DIGEST_LENGTH];
    char ascii_magic[5];
    char ascii_salt[9];
    char *ascii_passwd = ((void*)0);
    char *salt_out;
    int n;
    unsigned int i;
    EVP_MD_CTX *md = ((void*)0), *md2 = ((void*)0);
    size_t passwd_len, salt_len, magic_len;

    passwd_len = strlen(passwd);

    out_buf[0] = 0;
    magic_len = strlen(magic);
    OPENSSL_strlcpy(ascii_magic, magic, sizeof(ascii_magic));






    OPENSSL_strlcpy(ascii_salt, salt, sizeof(ascii_salt));
    salt_len = strlen(ascii_salt);
    if (magic_len > 0) {
        OPENSSL_strlcat(out_buf, ascii_dollar, sizeof(out_buf));

        if (magic_len > 4)
            goto err;

        OPENSSL_strlcat(out_buf, ascii_magic, sizeof(out_buf));
        OPENSSL_strlcat(out_buf, ascii_dollar, sizeof(out_buf));
    }

    OPENSSL_strlcat(out_buf, ascii_salt, sizeof(out_buf));

    if (strlen(out_buf) > 6 + 8)
        goto err;

    salt_out = out_buf;
    if (magic_len > 0)
        salt_out += 2 + magic_len;

    if (salt_len > 8)
        goto err;

    md = EVP_MD_CTX_new();
    if (md == ((void*)0)
        || !EVP_DigestInit_ex(md, EVP_md5(), ((void*)0))
        || !EVP_DigestUpdate(md, passwd, passwd_len))
        goto err;

    if (magic_len > 0)
        if (!EVP_DigestUpdate(md, ascii_dollar, 1)
            || !EVP_DigestUpdate(md, ascii_magic, magic_len)
            || !EVP_DigestUpdate(md, ascii_dollar, 1))
          goto err;

    if (!EVP_DigestUpdate(md, ascii_salt, salt_len))
        goto err;

    md2 = EVP_MD_CTX_new();
    if (md2 == ((void*)0)
        || !EVP_DigestInit_ex(md2, EVP_md5(), ((void*)0))
        || !EVP_DigestUpdate(md2, passwd, passwd_len)
        || !EVP_DigestUpdate(md2, ascii_salt, salt_len)
        || !EVP_DigestUpdate(md2, passwd, passwd_len)
        || !EVP_DigestFinal_ex(md2, buf, ((void*)0)))
        goto err;

    for (i = passwd_len; i > sizeof(buf); i -= sizeof(buf)) {
        if (!EVP_DigestUpdate(md, buf, sizeof(buf)))
            goto err;
    }
    if (!EVP_DigestUpdate(md, buf, i))
        goto err;

    n = passwd_len;
    while (n) {
        if (!EVP_DigestUpdate(md, (n & 1) ? "\0" : passwd, 1))
            goto err;
        n >>= 1;
    }
    if (!EVP_DigestFinal_ex(md, buf, ((void*)0)))
        return ((void*)0);

    for (i = 0; i < 1000; i++) {
        if (!EVP_DigestInit_ex(md2, EVP_md5(), ((void*)0)))
            goto err;
        if (!EVP_DigestUpdate(md2,
                              (i & 1) ? (unsigned const char *)passwd : buf,
                              (i & 1) ? passwd_len : sizeof(buf)))
            goto err;
        if (i % 3) {
            if (!EVP_DigestUpdate(md2, ascii_salt, salt_len))
                goto err;
        }
        if (i % 7) {
            if (!EVP_DigestUpdate(md2, passwd, passwd_len))
                goto err;
        }
        if (!EVP_DigestUpdate(md2,
                              (i & 1) ? buf : (unsigned const char *)passwd,
                              (i & 1) ? sizeof(buf) : passwd_len))
                goto err;
        if (!EVP_DigestFinal_ex(md2, buf, ((void*)0)))
                goto err;
    }
    EVP_MD_CTX_free(md2);
    EVP_MD_CTX_free(md);
    md2 = ((void*)0);
    md = ((void*)0);

    {

        unsigned char buf_perm[sizeof(buf)];
        int dest, source;
        char *output;


        for (dest = 0, source = 0; dest < 14;
             dest++, source = (source + 6) % 17)
            buf_perm[dest] = buf[source];
        buf_perm[14] = buf[5];
        buf_perm[15] = buf[11];


        assert(16 == sizeof(buf_perm));


        output = salt_out + salt_len;
        assert(output == out_buf + strlen(out_buf));

        *output++ = ascii_dollar[0];

        for (i = 0; i < 15; i += 3) {
            *output++ = cov_2char[buf_perm[i + 2] & 0x3f];
            *output++ = cov_2char[((buf_perm[i + 1] & 0xf) << 2) |
                                  (buf_perm[i + 2] >> 6)];
            *output++ = cov_2char[((buf_perm[i] & 3) << 4) |
                                  (buf_perm[i + 1] >> 4)];
            *output++ = cov_2char[buf_perm[i] >> 2];
        }
        assert(i == 15);
        *output++ = cov_2char[buf_perm[i] & 0x3f];
        *output++ = cov_2char[buf_perm[i] >> 6];
        *output = 0;
        assert(strlen(out_buf) < sizeof(out_buf));



    }

    return out_buf;

 err:
    OPENSSL_free(ascii_passwd);
    EVP_MD_CTX_free(md2);
    EVP_MD_CTX_free(md);
    return ((void*)0);
}
