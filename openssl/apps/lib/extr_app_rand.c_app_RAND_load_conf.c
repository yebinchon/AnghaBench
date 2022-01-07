
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int BIO_printf (int ,char*,char const*) ;
 int ERR_clear_error () ;
 int ERR_print_errors (int ) ;
 char* NCONF_get_string (int *,char const*,char*) ;
 int * OPENSSL_strdup (char const*) ;
 scalar_t__ RAND_load_file (char const*,int) ;
 int bio_err ;
 int * save_rand_file ;

void app_RAND_load_conf(CONF *c, const char *section)
{
    const char *randfile = NCONF_get_string(c, section, "RANDFILE");

    if (randfile == ((void*)0)) {
        ERR_clear_error();
        return;
    }
    if (RAND_load_file(randfile, -1) < 0) {
        BIO_printf(bio_err, "Can't load %s into RNG\n", randfile);
        ERR_print_errors(bio_err);
    }
    if (save_rand_file == ((void*)0))
        save_rand_file = OPENSSL_strdup(randfile);
}
