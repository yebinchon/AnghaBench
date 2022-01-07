
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long (* callback_ex ) (TYPE_1__*,int,char const*,size_t,int,long,long,size_t*) ;long (* callback ) (TYPE_1__*,int,char const*,int,long,long) ;} ;
typedef TYPE_1__ BIO ;


 int BIO_CB_CTRL ;
 int BIO_CB_RETURN ;
 scalar_t__ HAS_LEN_OPER (int) ;
 size_t INT_MAX ;
 long stub1 (TYPE_1__*,int,char const*,size_t,int,long,long,size_t*) ;
 long stub2 (TYPE_1__*,int,char const*,int,long,long) ;

__attribute__((used)) static long bio_call_callback(BIO *b, int oper, const char *argp, size_t len,
                              int argi, long argl, long inret, size_t *processed)
{
    long ret;
    int bareoper;

    if (b->callback_ex != ((void*)0))
        return b->callback_ex(b, oper, argp, len, argi, argl, inret, processed);


    bareoper = oper & ~BIO_CB_RETURN;





    if (HAS_LEN_OPER(bareoper)) {

        if (len > INT_MAX)
            return -1;

        argi = (int)len;
    }

    if (inret > 0 && (oper & BIO_CB_RETURN) && bareoper != BIO_CB_CTRL) {
        if (*processed > INT_MAX)
            return -1;
        inret = *processed;
    }

    ret = b->callback(b, oper, argp, argi, argl, inret);

    if (ret > 0 && (oper & BIO_CB_RETURN) && bareoper != BIO_CB_CTRL) {
        *processed = (size_t)ret;
        ret = 1;
    }

    return ret;
}
