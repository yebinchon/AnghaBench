
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int OPENSSL_DIR_CTX ;
typedef int BIO ;


 int * BIO_new_file (char*,char*) ;
 int CONF_F_PROCESS_INCLUDE ;
 int CONF_R_RECURSIVE_DIRECTORY_INCLUDE ;
 int CONFerr (int ,int ) ;
 int ERR_LIB_SYS ;
 int ERR_add_error_data (int,char*) ;
 int ERR_raise_data (int ,int ,char*,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 int * get_next_file (char*,int **) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static BIO *process_include(char *include, OPENSSL_DIR_CTX **dirctx,
                            char **dirpath)
{
    struct stat st;
    BIO *next;

    if (stat(include, &st) < 0) {
        ERR_raise_data(ERR_LIB_SYS, errno,
                       "calling stat(%s)",
                       include);

        return ((void*)0);
    }

    if (S_ISDIR(st.st_mode)) {
        if (*dirctx != ((void*)0)) {
            CONFerr(CONF_F_PROCESS_INCLUDE,
                    CONF_R_RECURSIVE_DIRECTORY_INCLUDE);
            ERR_add_error_data(1, include);
            return ((void*)0);
        }

        if ((next = get_next_file(include, dirctx)) != ((void*)0))
            *dirpath = include;
        return next;
    }

    next = BIO_new_file(include, "r");
    return next;
}
