
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_type; size_t data_size; scalar_t__ return_size; void* data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int BIGNUM ;


 int BN_bn2nativepad (int *,void*,size_t) ;
 int BN_is_negative (int *) ;
 int OPENSSL_hexstr2buf_ex (void*,size_t,size_t*,char const*) ;




 int memcpy (void*,char const*,size_t) ;
 int strncpy (void*,char const*,size_t) ;

__attribute__((used)) static int construct_from_text(OSSL_PARAM *to, const OSSL_PARAM *paramdef,
                               const char *value, size_t value_n, int ishex,
                               void *buf, size_t buf_n, BIGNUM *tmpbn)
{
    if (buf == ((void*)0))
        return 0;

    if (buf_n > 0) {
        switch (paramdef->data_type) {
        case 131:
        case 129:
            BN_bn2nativepad(tmpbn, buf, buf_n);







            if (paramdef->data_type == 131
                && BN_is_negative(tmpbn)) {
                unsigned char *cp;
                size_t i = buf_n;

                for (cp = buf; i-- > 0; cp++)
                    *cp ^= 0xFF;
            }
            break;
        case 128:
            strncpy(buf, value, buf_n);
            break;
        case 130:
            if (ishex) {
                size_t l = 0;

                if (!OPENSSL_hexstr2buf_ex(buf, buf_n, &l, value))
                    return 0;
            } else {
                memcpy(buf, value, buf_n);
            }
            break;
        }
    }

    *to = *paramdef;
    to->data = buf;
    to->data_size = buf_n;
    to->return_size = 0;

    return 1;
}
