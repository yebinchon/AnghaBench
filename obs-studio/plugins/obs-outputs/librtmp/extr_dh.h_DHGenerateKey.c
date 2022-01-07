
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * priv_key; int * pub_key; int p; } ;
typedef int * MP_t ;
typedef TYPE_1__ MDH ;


 int MDH_generate_key (TYPE_1__*) ;
 int MP_free (int *) ;
 int MP_gethex (int *,int ,size_t) ;
 int Q1024 ;
 int assert (size_t) ;
 size_t isValidPublicKey (int *,int ,int *) ;

__attribute__((used)) static int
DHGenerateKey(MDH *dh)
{
    size_t res = 0;
    if (!dh)
        return 0;

    while (!res)
    {
        MP_t q1 = ((void*)0);

        if (!MDH_generate_key(dh))
            return 0;

        MP_gethex(q1, Q1024, res);
        assert(res);

        res = isValidPublicKey(dh->pub_key, dh->p, q1);
        if (!res)
        {
            MP_free(dh->pub_key);
            MP_free(dh->priv_key);
            dh->pub_key = dh->priv_key = 0;
        }

        MP_free(q1);
    }
    return 1;
}
