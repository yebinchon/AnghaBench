
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dirty_cnt; int length; scalar_t__ seedlen; int * seed; int j; int q; int g; int p; } ;
typedef TYPE_1__ DH ;


 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (int *,scalar_t__) ;
 int int_dh_bn_cpy (int *,int ) ;

__attribute__((used)) static int int_dh_param_copy(DH *to, const DH *from, int is_x942)
{
    if (is_x942 == -1)
        is_x942 = ! !from->q;
    if (!int_dh_bn_cpy(&to->p, from->p))
        return 0;
    if (!int_dh_bn_cpy(&to->g, from->g))
        return 0;
    if (is_x942) {
        if (!int_dh_bn_cpy(&to->q, from->q))
            return 0;
        if (!int_dh_bn_cpy(&to->j, from->j))
            return 0;
        OPENSSL_free(to->seed);
        to->seed = ((void*)0);
        to->seedlen = 0;
        if (from->seed) {
            to->seed = OPENSSL_memdup(from->seed, from->seedlen);
            if (!to->seed)
                return 0;
            to->seedlen = from->seedlen;
        }
    } else
        to->length = from->length;
    to->dirty_cnt++;
    return 1;
}
