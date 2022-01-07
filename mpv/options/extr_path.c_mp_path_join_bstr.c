
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int len; char* start; } ;


 int BSTR_P (struct bstr) ;
 char* bstrdup0 (void*,struct bstr) ;
 char* talloc_asprintf (void*,char*,int ,char*,int ) ;

char *mp_path_join_bstr(void *talloc_ctx, struct bstr p1, struct bstr p2)
{
    bool test;
    if (p1.len == 0)
        return bstrdup0(talloc_ctx, p2);
    if (p2.len == 0)
        return bstrdup0(talloc_ctx, p1);





    test = p2.start[0] == '/';

    if (test)
        return bstrdup0(talloc_ctx, p2);

    bool have_separator;
    int endchar1 = p1.start[p1.len - 1];




    have_separator = endchar1 == '/';


    return talloc_asprintf(talloc_ctx, "%.*s%s%.*s", BSTR_P(p1),
                           have_separator ? "" : "/", BSTR_P(p2));
}
