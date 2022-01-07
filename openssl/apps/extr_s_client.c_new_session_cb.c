
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (int *,char*) ;
 int BIO_printf (int ,char*,...) ;
 int PEM_write_bio_SSL_SESSION (int *,int *) ;
 int SSL_SESSION_print (int ,int *) ;
 scalar_t__ SSL_version (int *) ;
 scalar_t__ TLS1_3_VERSION ;
 int bio_c_out ;
 int bio_err ;
 int * sess_out ;

__attribute__((used)) static int new_session_cb(SSL *s, SSL_SESSION *sess)
{

    if (sess_out != ((void*)0)) {
        BIO *stmp = BIO_new_file(sess_out, "w");

        if (stmp == ((void*)0)) {
            BIO_printf(bio_err, "Error writing session file %s\n", sess_out);
        } else {
            PEM_write_bio_SSL_SESSION(stmp, sess);
            BIO_free(stmp);
        }
    }





    if (SSL_version(s) == TLS1_3_VERSION) {
        BIO_printf(bio_c_out,
                   "---\nPost-Handshake New Session Ticket arrived:\n");
        SSL_SESSION_print(bio_c_out, sess);
        BIO_printf(bio_c_out, "---\n");
    }





    return 0;
}
