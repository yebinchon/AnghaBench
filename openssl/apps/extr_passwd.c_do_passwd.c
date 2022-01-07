
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ passwd_modes ;
typedef int BIO ;


 int BIO_printf (int *,char*,...) ;
 char* DES_crypt (char*,char*) ;
 scalar_t__ RAND_bytes (unsigned char*,size_t) ;
 char* app_malloc (size_t,char*) ;
 int ascii2ebcdic (char*,char*,size_t) ;
 int assert (int) ;
 int bio_err ;
 char* cov_2char ;
 char* md5crypt (char*,char*,char*) ;
 scalar_t__ passwd_aixmd5 ;
 scalar_t__ passwd_apr1 ;
 scalar_t__ passwd_crypt ;
 scalar_t__ passwd_md5 ;
 scalar_t__ passwd_sha256 ;
 scalar_t__ passwd_sha512 ;
 char* shacrypt (char*,char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int do_passwd(int passed_salt, char **salt_p, char **salt_malloc_p,
                     char *passwd, BIO *out, int quiet, int table,
                     int reverse, size_t pw_maxlen, passwd_modes mode)
{
    char *hash = ((void*)0);

    assert(salt_p != ((void*)0));
    assert(salt_malloc_p != ((void*)0));


    if (!passed_salt) {
        size_t saltlen = 0;
        size_t i;


        if (mode == passwd_crypt)
            saltlen = 2;


        if (mode == passwd_md5 || mode == passwd_apr1 || mode == passwd_aixmd5)
            saltlen = 8;

        if (mode == passwd_sha256 || mode == passwd_sha512)
            saltlen = 16;

        assert(saltlen != 0);

        if (*salt_malloc_p == ((void*)0))
            *salt_p = *salt_malloc_p = app_malloc(saltlen + 1, "salt buffer");
        if (RAND_bytes((unsigned char *)*salt_p, saltlen) <= 0)
            goto end;

        for (i = 0; i < saltlen; i++)
            (*salt_p)[i] = cov_2char[(*salt_p)[i] & 0x3f];
        (*salt_p)[i] = 0;




    }

    assert(*salt_p != ((void*)0));


    if ((strlen(passwd) > pw_maxlen)) {
        if (!quiet)



            BIO_printf(bio_err,
                       "Warning: truncating password to %u characters\n",
                       (unsigned)pw_maxlen);
        passwd[pw_maxlen] = 0;
    }
    assert(strlen(passwd) <= pw_maxlen);



    if (mode == passwd_crypt)
        hash = DES_crypt(passwd, *salt_p);

    if (mode == passwd_md5 || mode == passwd_apr1)
        hash = md5crypt(passwd, (mode == passwd_md5 ? "1" : "apr1"), *salt_p);
    if (mode == passwd_aixmd5)
        hash = md5crypt(passwd, "", *salt_p);
    if (mode == passwd_sha256 || mode == passwd_sha512)
        hash = shacrypt(passwd, (mode == passwd_sha256 ? "5" : "6"), *salt_p);
    assert(hash != ((void*)0));

    if (table && !reverse)
        BIO_printf(out, "%s\t%s\n", passwd, hash);
    else if (table && reverse)
        BIO_printf(out, "%s\t%s\n", hash, passwd);
    else
        BIO_printf(out, "%s\n", hash);
    return 1;

 end:
    return 0;
}
