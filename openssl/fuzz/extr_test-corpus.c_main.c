
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_DIR_CTX ;


 int FuzzerCleanup () ;
 int FuzzerInitialize (int*,char***) ;
 int OPENSSL_DIR_end (int **) ;
 char* OPENSSL_DIR_read (int **,char*) ;
 int PATH_MAX ;
 int free (char*) ;
 char* malloc (int ) ;
 int * strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char*) ;
 int testfile (char*) ;

int main(int argc, char **argv) {
    int n;

    FuzzerInitialize(&argc, &argv);

    for (n = 1; n < argc; ++n) {
        size_t dirname_len = strlen(argv[n]);
        const char *filename = ((void*)0);
        char *pathname = ((void*)0);
        OPENSSL_DIR_CTX *ctx = ((void*)0);
        int wasdir = 0;




        while ((filename = OPENSSL_DIR_read(&ctx, argv[n])) != ((void*)0)) {
            wasdir = 1;
            if (pathname == ((void*)0)) {
                pathname = malloc(PATH_MAX);
                if (pathname == ((void*)0))
                    break;
                strcpy(pathname, argv[n]);



                    pathname[dirname_len++] = '/';
                pathname[dirname_len] = '\0';
            }
            strcpy(pathname + dirname_len, filename);
            testfile(pathname);
        }
        OPENSSL_DIR_end(&ctx);


        if (!wasdir)
            testfile(argv[n]);

        free(pathname);
    }

    FuzzerCleanup();

    return 0;
}
