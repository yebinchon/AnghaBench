
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const BIO_METHOD ;


 int BIO_TYPE_FILTER ;
 int BIO_TYPE_START ;
 int const* BIO_meth_new (int,char*) ;
 int BIO_meth_set_callback_ctrl (int const*,int ) ;
 int BIO_meth_set_create (int const*,int ) ;
 int BIO_meth_set_ctrl (int const*,int ) ;
 int BIO_meth_set_destroy (int const*,int ) ;
 int BIO_meth_set_gets (int const*,int ) ;
 int BIO_meth_set_puts (int const*,int ) ;
 int BIO_meth_set_read_ex (int const*,int ) ;
 int BIO_meth_set_write_ex (int const*,int ) ;
 int tap_callback_ctrl ;
 int tap_ctrl ;
 int tap_free ;
 int tap_gets ;
 int tap_new ;
 int tap_puts ;
 int tap_read_ex ;
 int tap_write_ex ;

const BIO_METHOD *BIO_f_tap(void)
{
    static BIO_METHOD *tap = ((void*)0);

    if (tap == ((void*)0)) {
        tap = BIO_meth_new(BIO_TYPE_START | BIO_TYPE_FILTER, "tap");
        if (tap != ((void*)0)) {
            BIO_meth_set_write_ex(tap, tap_write_ex);
            BIO_meth_set_read_ex(tap, tap_read_ex);
            BIO_meth_set_puts(tap, tap_puts);
            BIO_meth_set_gets(tap, tap_gets);
            BIO_meth_set_ctrl(tap, tap_ctrl);
            BIO_meth_set_create(tap, tap_new);
            BIO_meth_set_destroy(tap, tap_free);
            BIO_meth_set_callback_ctrl(tap, tap_callback_ctrl);
        }
    }
    return tap;
}
