
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_FIRST ;
 int DSO_REFTEST ;
 int JUST_CRYPTO ;
 int NO_ATEXIT ;
 int SSL_FIRST ;
 int fprintf (int ,char*) ;
 char* path_atexit ;
 char* path_crypto ;
 char* path_ssl ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int test_lib () ;
 int test_type ;

int main(int argc, char *argv[])
{
    const char *p;

    if (argc != 5) {
        fprintf(stderr, "Incorrect number of arguments\n");
        return 1;
    }

    p = argv[1];

    if (strcmp(p, "-crypto_first") == 0) {
        test_type = CRYPTO_FIRST;
    } else if (strcmp(p, "-ssl_first") == 0) {
        test_type = SSL_FIRST;
    } else if (strcmp(p, "-just_crypto") == 0) {
        test_type = JUST_CRYPTO;
    } else if (strcmp(p, "-dso_ref") == 0) {
        test_type = DSO_REFTEST;
    } else if (strcmp(p, "-no_atexit") == 0) {
        test_type = NO_ATEXIT;
    } else {
        fprintf(stderr, "Unrecognised argument\n");
        return 1;
    }
    path_crypto = argv[2];
    path_ssl = argv[3];
    path_atexit = argv[4];
    if (path_crypto == ((void*)0) || path_ssl == ((void*)0)) {
        fprintf(stderr, "Invalid libcrypto/libssl path\n");
        return 1;
    }





    return 0;
}
