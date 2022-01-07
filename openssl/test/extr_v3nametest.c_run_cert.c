
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_name_fn {scalar_t__ email; scalar_t__ host; } ;
typedef int X509 ;


 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (size_t) ;
 int TEST_int_ge (int,int ) ;
 int TEST_true (int ) ;
 int X509_CHECK_FLAG_NO_WILDCARDS ;
 int X509_check_email (int *,char*,size_t,int ) ;
 int X509_check_host (int *,char*,size_t,int ,int *) ;
 int check_message (struct set_name_fn const*,char*,char const*,int,char const* const) ;
 int memcpy (char*,char const* const,size_t) ;
 char** names ;
 scalar_t__ strcasecmp (char const*,char const* const) ;
 int * strchr (char const*,char) ;
 size_t strlen (char const* const) ;

__attribute__((used)) static int run_cert(X509 *crt, const char *nameincert,
                     const struct set_name_fn *fn)
{
    const char *const *pname = names;
    int failed = 0;

    for (; *pname != ((void*)0); ++pname) {
        int samename = strcasecmp(nameincert, *pname) == 0;
        size_t namelen = strlen(*pname);
        char *name = OPENSSL_malloc(namelen);
        int match, ret;

        memcpy(name, *pname, namelen);

        match = -1;
        if (!TEST_int_ge(ret = X509_check_host(crt, name, namelen, 0, ((void*)0)),
                         0)) {
            failed = 1;
        } else if (fn->host) {
            if (ret == 1 && !samename)
                match = 1;
            if (ret == 0 && samename)
                match = 0;
        } else if (ret == 1)
            match = 1;
        if (!TEST_true(check_message(fn, "host", nameincert, match, *pname)))
            failed = 1;

        match = -1;
        if (!TEST_int_ge(ret = X509_check_host(crt, name, namelen,
                                               X509_CHECK_FLAG_NO_WILDCARDS,
                                               ((void*)0)), 0)) {
            failed = 1;
        } else if (fn->host) {
            if (ret == 1 && !samename)
                match = 1;
            if (ret == 0 && samename)
                match = 0;
        } else if (ret == 1)
            match = 1;
        if (!TEST_true(check_message(fn, "host-no-wildcards",
                                     nameincert, match, *pname)))
            failed = 1;

        match = -1;
        ret = X509_check_email(crt, name, namelen, 0);
        if (fn->email) {
            if (ret && !samename)
                match = 1;
            if (!ret && samename && strchr(nameincert, '@') != ((void*)0))
                match = 0;
        } else if (ret)
            match = 1;
        if (!TEST_true(check_message(fn, "email", nameincert, match, *pname)))
            failed = 1;
        OPENSSL_free(name);
    }

    return failed == 0;
}
