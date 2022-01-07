
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct doall_dgst_digests {int n; int bio; } ;
struct TYPE_3__ {scalar_t__* name; } ;
typedef TYPE_1__ OBJ_NAME ;
typedef int EVP_MD ;


 int BIO_printf (int ,char*,...) ;
 int * EVP_get_digestbyname (scalar_t__*) ;
 int islower (unsigned char) ;
 int * strstr (scalar_t__*,char*) ;

__attribute__((used)) static void show_digests(const OBJ_NAME *name, void *arg)
{
    struct doall_dgst_digests *dec = (struct doall_dgst_digests *)arg;
    const EVP_MD *md = ((void*)0);


    if (strstr(name->name, "rsa") != ((void*)0) || strstr(name->name, "RSA") != ((void*)0))
        return;

    if (!islower((unsigned char)*name->name))
        return;


    md = EVP_get_digestbyname(name->name);
    if (md == ((void*)0))
        return;

    BIO_printf(dec->bio, "-%-25s", name->name);
    if (++dec->n == 3) {
        BIO_printf(dec->bio, "\n");
        dec->n = 0;
    } else {
        BIO_printf(dec->bio, " ");
    }
}
