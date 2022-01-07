
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int BIO_flush (int *) ;
 int BIO_printf (int *,char*,...) ;
 int bio_err ;
 int * bio_keylog ;

__attribute__((used)) static void keylog_callback(const SSL *ssl, const char *line)
{
    if (bio_keylog == ((void*)0)) {
        BIO_printf(bio_err, "Keylog callback is invoked without valid file!\n");
        return;
    }





    BIO_printf(bio_keylog, "%s\n", line);
    (void)BIO_flush(bio_keylog);
}
