
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; int g; int p; } ;
typedef TYPE_1__ MDH ;


 int MDH_free (TYPE_1__*) ;
 TYPE_1__* MDH_new () ;
 int MP_gethex (int ,int ,size_t) ;
 int MP_new (int ) ;
 int MP_set_w (int ,int) ;
 int P1024 ;

__attribute__((used)) static MDH *
DHInit(int nKeyBits)
{
    size_t res;
    MDH *dh = MDH_new();

    if (!dh)
        goto failed;

    MP_new(dh->g);

    if (!dh->g)
        goto failed;

    MP_gethex(dh->p, P1024, res);
    if (!res)
    {
        goto failed;
    }

    MP_set_w(dh->g, 2);

    dh->length = nKeyBits;
    return dh;

failed:
    if (dh)
        MDH_free(dh);

    return 0;
}
