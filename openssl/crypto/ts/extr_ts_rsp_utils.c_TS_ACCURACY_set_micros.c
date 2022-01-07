
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* micros; } ;
typedef TYPE_1__ TS_ACCURACY ;
typedef int const ASN1_INTEGER ;


 int const* ASN1_INTEGER_dup (int const*) ;
 int ASN1_INTEGER_free (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_TS_ACCURACY_SET_MICROS ;
 int TSerr (int ,int ) ;

int TS_ACCURACY_set_micros(TS_ACCURACY *a, const ASN1_INTEGER *micros)
{
    ASN1_INTEGER *new_micros = ((void*)0);

    if (a->micros == micros)
        return 1;
    if (micros != ((void*)0)) {
        new_micros = ASN1_INTEGER_dup(micros);
        if (new_micros == ((void*)0)) {
            TSerr(TS_F_TS_ACCURACY_SET_MICROS, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
    ASN1_INTEGER_free(a->micros);
    a->micros = new_micros;
    return 1;
}
