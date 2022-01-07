
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;
typedef int BIO ;


 int BIO_printf (void*,char*,char const*,...) ;
 int EVP_MD_name (int const*) ;

__attribute__((used)) static void list_md_fn(const EVP_MD *m,
                       const char *from, const char *to, void *arg)
{
    if (m != ((void*)0)) {
        BIO_printf(arg, "  %s\n", EVP_MD_name(m));
    } else {
        if (from == ((void*)0))
            from = "<undefined>";
        if (to == ((void*)0))
            to = "<undefined>";
        BIO_printf((BIO *)arg, "  %s => %s\n", from, to);
    }
}
