
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_name_fn {int (* fn ) (int *,char const* const) ;int name; } ;
typedef int X509 ;


 int TEST_info (char*,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int X509_free (int *) ;
 int * make_cert () ;
 struct set_name_fn* name_fns ;
 char** names ;
 int run_cert (int *,char const* const,struct set_name_fn const*) ;
 int stub1 (int *,char const* const) ;

__attribute__((used)) static int call_run_cert(int i)
{
    int failed = 0;
    const struct set_name_fn *pfn = &name_fns[i];
    X509 *crt;
    const char *const *pname;

    TEST_info("%s", pfn->name);
    for (pname = names; *pname != ((void*)0); pname++) {
        if (!TEST_ptr(crt = make_cert())
             || !TEST_true(pfn->fn(crt, *pname))
             || !run_cert(crt, *pname, pfn))
            failed = 1;
        X509_free(crt);
    }
    return failed == 0;
}
