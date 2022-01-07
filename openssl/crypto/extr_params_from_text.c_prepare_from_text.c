
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data_type; size_t data_size; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int BIGNUM ;


 int BN_dec2bn (int **,char const*) ;
 int BN_hex2bn (int **,char const*) ;
 int BN_is_negative (int *) ;
 size_t BN_num_bytes (int *) ;
 int BN_sub_word (int *,int) ;
 int CRYPTO_R_TOO_SMALL_BUFFER ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;




 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int prepare_from_text(const OSSL_PARAM *paramdefs, const char *key,
                             const char *value, size_t value_n,

                             const OSSL_PARAM **paramdef, int *ishex,
                             size_t *buf_n, BIGNUM **tmpbn)
{
    const OSSL_PARAM *p;





    *ishex = strncmp(key, "hex", 3) == 0;

    if (*ishex)
        key += 3;

    p = *paramdef = OSSL_PARAM_locate_const(paramdefs, key);
    if (p == ((void*)0))
        return 0;

    switch (p->data_type) {
    case 131:
    case 129:
        if (*ishex)
            BN_hex2bn(tmpbn, value);
        else
            BN_dec2bn(tmpbn, value);

        if (*tmpbn == ((void*)0))
            return 0;
        if (p->data_type == 131 && BN_is_negative(*tmpbn)
            && !BN_sub_word(*tmpbn, 1)) {
            return 0;
        }

        *buf_n = BN_num_bytes(*tmpbn);





        if (p->data_size > 0) {
            if (*buf_n >= p->data_size) {
                CRYPTOerr(0, CRYPTO_R_TOO_SMALL_BUFFER);

                return 0;
            }

            *buf_n = p->data_size;
        }
        break;
    case 128:
        if (*ishex) {
            CRYPTOerr(0, ERR_R_PASSED_INVALID_ARGUMENT);
            return 0;
        }
        *buf_n = strlen(value) + 1;
        break;
    case 130:
        if (*ishex) {
            *buf_n = strlen(value) >> 1;
        } else {
            *buf_n = value_n;
        }
        break;
    }

    return 1;
}
