
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_6__ {size_t top; char** err_data; size_t* err_data_size; scalar_t__* err_data_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 int BIO_vsnprintf (char*,size_t,char const*,int ) ;
 size_t ERR_MAX_DATA_SIZE ;
 unsigned long ERR_TXT_MALLOCED ;
 unsigned long ERR_TXT_STRING ;
 char* OPENSSL_realloc (char*,int) ;
 int err_clear_data (TYPE_1__*,size_t,int ) ;
 TYPE_1__* err_get_state_int () ;
 int err_set_data (TYPE_1__*,size_t,char*,size_t,unsigned long) ;
 int err_set_error (TYPE_1__*,size_t,int,int) ;

void ERR_vset_error(int lib, int reason, const char *fmt, va_list args)
{
    ERR_STATE *es;
    char *buf = ((void*)0);
    size_t buf_size = 0;
    unsigned long flags = 0;
    size_t i;

    es = err_get_state_int();
    if (es == ((void*)0))
        return;
    i = es->top;

    if (fmt != ((void*)0)) {
        int printed_len = 0;
        char *rbuf = ((void*)0);

        buf = es->err_data[i];
        buf_size = es->err_data_size[i];
        es->err_data[i] = ((void*)0);
        es->err_data_flags[i] = 0;





        if (buf_size < ERR_MAX_DATA_SIZE
            && (rbuf = OPENSSL_realloc(buf, ERR_MAX_DATA_SIZE)) != ((void*)0)) {
            buf = rbuf;
            buf_size = ERR_MAX_DATA_SIZE;
        }

        if (buf != ((void*)0)) {
            printed_len = BIO_vsnprintf(buf, buf_size, fmt, args);
        }
        if (printed_len < 0)
            printed_len = 0;
        buf[printed_len] = '\0';







        if ((rbuf = OPENSSL_realloc(buf, printed_len + 1)) != ((void*)0)) {
            buf = rbuf;
            buf_size = printed_len + 1;
        }

        if (buf != ((void*)0))
            flags = ERR_TXT_MALLOCED | ERR_TXT_STRING;
    }

    err_clear_data(es, es->top, 0);
    err_set_error(es, es->top, lib, reason);
    if (fmt != ((void*)0))
        err_set_data(es, es->top, buf, buf_size, flags);
}
