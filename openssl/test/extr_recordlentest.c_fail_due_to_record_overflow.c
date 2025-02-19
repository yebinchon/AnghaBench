
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR_GET_LIB (long) ;
 int ERR_GET_REASON (long) ;
 scalar_t__ ERR_LIB_SSL ;
 long ERR_peek_error () ;
 int SSL_R_DATA_LENGTH_TOO_LONG ;
 int SSL_R_ENCRYPTED_LENGTH_TOO_LONG ;

__attribute__((used)) static int fail_due_to_record_overflow(int enc)
{
    long err = ERR_peek_error();
    int reason;

    if (enc)
        reason = SSL_R_ENCRYPTED_LENGTH_TOO_LONG;
    else
        reason = SSL_R_DATA_LENGTH_TOO_LONG;

    if (ERR_GET_LIB(err) == ERR_LIB_SSL
            && ERR_GET_REASON(err) == reason)
        return 1;

    return 0;
}
