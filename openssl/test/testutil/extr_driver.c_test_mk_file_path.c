
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_strlcat (char*,char const*,size_t) ;
 int OPENSSL_strlcpy (char*,char const*,size_t) ;
 char* OPENSSL_zalloc (size_t) ;
 int strlen (char const*) ;

char *test_mk_file_path(const char *dir, const char *file)
{

    const char *sep = "/";



    size_t len = strlen(dir) + strlen(sep) + strlen(file) + 1;
    char *full_file = OPENSSL_zalloc(len);

    if (full_file != ((void*)0)) {
        OPENSSL_strlcpy(full_file, dir, len);
        OPENSSL_strlcat(full_file, sep, len);
        OPENSSL_strlcat(full_file, file, len);
    }

    return full_file;
}
