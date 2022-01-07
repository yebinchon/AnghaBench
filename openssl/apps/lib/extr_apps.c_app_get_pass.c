
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int APP_PASS_LEN ;
 int BIO_NOCLOSE ;
 int BIO_f_buffer () ;
 int BIO_free_all (int *) ;
 int BIO_gets (int *,char*,int) ;
 int * BIO_new (int ) ;
 int * BIO_new_fd (int,int ) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,...) ;
 int * BIO_push (int *,int *) ;
 int FORMAT_TEXT ;
 char* OPENSSL_strdup (char const*) ;
 int PASS_SOURCE_SIZE_MAX ;
 int atoi (char const*) ;
 int bio_err ;
 int * dup_bio_in (int ) ;
 char* getenv (char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static char *app_get_pass(const char *arg, int keepbio)
{
    static BIO *pwdbio = ((void*)0);
    char *tmp, tpass[APP_PASS_LEN];
    int i;


    if (strncmp(arg, "pass:", 5) == 0)
        return OPENSSL_strdup(arg + 5);
    if (strncmp(arg, "env:", 4) == 0) {
        tmp = getenv(arg + 4);
        if (tmp == ((void*)0)) {
            BIO_printf(bio_err, "No environment variable %s\n", arg + 4);
            return ((void*)0);
        }
        return OPENSSL_strdup(tmp);
    }
    if (!keepbio || pwdbio == ((void*)0)) {
        if (strncmp(arg, "file:", 5) == 0) {
            pwdbio = BIO_new_file(arg + 5, "r");
            if (pwdbio == ((void*)0)) {
                BIO_printf(bio_err, "Can't open file %s\n", arg + 5);
                return ((void*)0);
            }
        } else if (strncmp(arg, "fd:", 3) == 0) {
            BIO *btmp;
            i = atoi(arg + 3);
            if (i >= 0)
                pwdbio = BIO_new_fd(i, BIO_NOCLOSE);
            if ((i < 0) || !pwdbio) {
                BIO_printf(bio_err, "Can't access file descriptor %s\n", arg + 3);
                return ((void*)0);
            }



            btmp = BIO_new(BIO_f_buffer());
            pwdbio = BIO_push(btmp, pwdbio);

        } else if (strcmp(arg, "stdin") == 0) {
            pwdbio = dup_bio_in(FORMAT_TEXT);
            if (pwdbio == ((void*)0)) {
                BIO_printf(bio_err, "Can't open BIO for stdin\n");
                return ((void*)0);
            }
        } else {

            tmp = strchr(arg, ':');
            if (tmp == ((void*)0) || tmp - arg > PASS_SOURCE_SIZE_MAX)
                BIO_printf(bio_err,
                           "Invalid password argument, missing ':' within the first %d chars\n",
                           PASS_SOURCE_SIZE_MAX + 1);
            else
                BIO_printf(bio_err,
                           "Invalid password argument, starting with \"%.*s\"\n",
                           (int)(tmp - arg + 1), arg);
            return ((void*)0);
        }
    }
    i = BIO_gets(pwdbio, tpass, APP_PASS_LEN);
    if (keepbio != 1) {
        BIO_free_all(pwdbio);
        pwdbio = ((void*)0);
    }
    if (i <= 0) {
        BIO_printf(bio_err, "Error reading password from BIO\n");
        return ((void*)0);
    }
    tmp = strchr(tpass, '\n');
    if (tmp != ((void*)0))
        *tmp = 0;
    return OPENSSL_strdup(tpass);
}
