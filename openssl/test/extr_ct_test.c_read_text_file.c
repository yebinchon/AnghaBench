
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char*,char*) ;
 int BIO_read (int *,char*,int) ;
 int OPENSSL_free (char*) ;
 char* test_mk_file_path (char const*,char const*) ;

__attribute__((used)) static int read_text_file(const char *dir, const char *file,
                          char *buffer, int buffer_length)
{
    int len = -1;
    char *file_path = test_mk_file_path(dir, file);

    if (file_path != ((void*)0)) {
        BIO *file_io = BIO_new_file(file_path, "r");

        if (file_io != ((void*)0))
            len = BIO_read(file_io, buffer, buffer_length);
        BIO_free(file_io);
    }

    OPENSSL_free(file_path);
    return len;
}
