
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;


 int ERR_LIB_EVP ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ERR_raise (int ,int ) ;
 int ERR_raise_data (int ,int ,char*,int,...) ;
 int EVP_R_BAD_ALGORITHM_NAME ;
 int EVP_R_CONFLICTING_ALGORITHM_NAME ;
 char const NAME_SEPARATOR ;
 int ossl_namemap_add_n (int *,int,char const*,size_t) ;
 int ossl_namemap_name2num_n (int *,char const*,size_t) ;
 char* strchr (char const*,char const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int add_names_to_namemap(OSSL_NAMEMAP *namemap,
                                const char *names)
{
    const char *p, *q;
    size_t l;
    int id = 0;


    if (namemap == ((void*)0)) {
        ERR_raise(ERR_LIB_EVP, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }





    for (p = names; *p != '\0'; p = (q == ((void*)0) ? p + l : q + 1)) {
        int this_id;

        if ((q = strchr(p, NAME_SEPARATOR)) == ((void*)0))
            l = strlen(p);
        else
            l = q - p;

        this_id = ossl_namemap_name2num_n(namemap, p, l);

        if (*p == '\0' || *p == NAME_SEPARATOR) {
            ERR_raise(ERR_LIB_EVP, EVP_R_BAD_ALGORITHM_NAME);
            return 0;
        }
        if (id == 0)
            id = this_id;
        else if (this_id != 0 && this_id != id) {
            ERR_raise_data(ERR_LIB_EVP, EVP_R_CONFLICTING_ALGORITHM_NAME,
                           "\"%.*s\" has an existing different identity %d (from \"%s\")",
                           l, p, this_id, names);
            return 0;
        }
    }


    for (p = names; *p != '\0'; p = (q == ((void*)0) ? p + l : q + 1)) {
        int this_id;

        if ((q = strchr(p, NAME_SEPARATOR)) == ((void*)0))
            l = strlen(p);
        else
            l = q - p;

        this_id = ossl_namemap_add_n(namemap, id, p, l);
        if (id == 0)
            id = this_id;
        else if (this_id != id) {
            ERR_raise_data(ERR_LIB_EVP, ERR_R_INTERNAL_ERROR,
                           "Got id %d when expecting %d", this_id, id);
            return 0;
        }
    }

    return id;
}
