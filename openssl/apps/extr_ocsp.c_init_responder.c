
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_BIND_REUSEADDR ;
 scalar_t__ BIO_do_accept (int *) ;
 int BIO_f_buffer () ;
 int BIO_free (int *) ;
 int BIO_free_all (int *) ;
 int * BIO_new (int ) ;
 int BIO_printf (int ,char*) ;
 int BIO_s_accept () ;
 int BIO_set_accept_bios (int *,int *) ;
 scalar_t__ BIO_set_accept_port (int *,char const*) ;
 scalar_t__ BIO_set_bind_mode (int *,int ) ;
 int LOG_ERR ;
 int bio_err ;
 int log_message (int ,char*) ;

__attribute__((used)) static BIO *init_responder(const char *port)
{





    BIO *acbio = ((void*)0), *bufbio = ((void*)0);

    bufbio = BIO_new(BIO_f_buffer());
    if (bufbio == ((void*)0))
        goto err;
    acbio = BIO_new(BIO_s_accept());
    if (acbio == ((void*)0)
        || BIO_set_bind_mode(acbio, BIO_BIND_REUSEADDR) < 0
        || BIO_set_accept_port(acbio, port) < 0) {
        log_message(LOG_ERR, "Error setting up accept BIO");
        goto err;
    }

    BIO_set_accept_bios(acbio, bufbio);
    bufbio = ((void*)0);
    if (BIO_do_accept(acbio) <= 0) {
        log_message(LOG_ERR, "Error starting accept");
        goto err;
    }

    return acbio;

 err:
    BIO_free_all(acbio);
    BIO_free(bufbio);
    return ((void*)0);

}
