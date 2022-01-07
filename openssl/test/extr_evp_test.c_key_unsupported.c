
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EC_R_UNKNOWN_GROUP ;
 scalar_t__ ERR_GET_LIB (long) ;
 scalar_t__ ERR_GET_REASON (long) ;
 scalar_t__ ERR_LIB_EC ;
 scalar_t__ ERR_LIB_EVP ;
 int ERR_clear_error () ;
 long ERR_peek_error () ;
 scalar_t__ EVP_R_UNSUPPORTED_ALGORITHM ;

__attribute__((used)) static int key_unsupported(void)
{
    long err = ERR_peek_error();

    if (ERR_GET_LIB(err) == ERR_LIB_EVP
            && ERR_GET_REASON(err) == EVP_R_UNSUPPORTED_ALGORITHM) {
        ERR_clear_error();
        return 1;
    }






    if (ERR_GET_LIB(err) == ERR_LIB_EC
        && ERR_GET_REASON(err) == EC_R_UNKNOWN_GROUP) {
        ERR_clear_error();
        return 1;
    }

    return 0;
}
