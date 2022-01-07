
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_6__ {int * directoryName; } ;
struct TYPE_7__ {TYPE_1__ d; int type; } ;
typedef TYPE_2__ GENERAL_NAME ;


 int GENERAL_NAME_free (TYPE_2__*) ;
 TYPE_2__* GENERAL_NAME_new () ;
 int GEN_DIRNAME ;
 int * X509_NAME_new () ;
 int X509_NAME_set (int **,int const*) ;
 int ossl_assert (int ) ;

__attribute__((used)) static int set1_general_name(GENERAL_NAME **tgt, const X509_NAME *src)
{
    GENERAL_NAME *gen;

    if (!ossl_assert(tgt != ((void*)0)))
        return 0;
    if ((gen = GENERAL_NAME_new()) == ((void*)0))
        goto err;
    gen->type = GEN_DIRNAME;

    if (src == ((void*)0)) {
        if ((gen->d.directoryName = X509_NAME_new()) == ((void*)0))
            goto err;
    } else if (!X509_NAME_set(&gen->d.directoryName, src)) {
        goto err;
    }

    GENERAL_NAME_free(*tgt);
    *tgt = gen;

    return 1;

 err:
    GENERAL_NAME_free(gen);
    return 0;
}
