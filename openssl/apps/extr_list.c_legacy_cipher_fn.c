
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int BIO_printf (void*,char*,char const*,...) ;
 int EVP_CIPHER_name (int const*) ;

__attribute__((used)) static void legacy_cipher_fn(const EVP_CIPHER *c,
                             const char *from, const char *to, void *arg)
{
    if (c != ((void*)0)) {
        BIO_printf(arg, "  %s\n", EVP_CIPHER_name(c));
    } else {
        if (from == ((void*)0))
            from = "<undefined>";
        if (to == ((void*)0))
            to = "<undefined>";
        BIO_printf(arg, "  %s => %s\n", from, to);
    }
}
