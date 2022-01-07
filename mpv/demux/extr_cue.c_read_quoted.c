
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 struct bstr bstr_cut (struct bstr,int) ;
 struct bstr bstr_lstrip (struct bstr) ;
 struct bstr bstr_splice (struct bstr,int ,int) ;
 int bstrchr (struct bstr,char) ;
 char* bstrto0 (void*,struct bstr) ;
 int eat_char (struct bstr*,char) ;

__attribute__((used)) static char *read_quoted(void *talloc_ctx, struct bstr *data)
{
    *data = bstr_lstrip(*data);
    if (!eat_char(data, '"'))
        return ((void*)0);
    int end = bstrchr(*data, '"');
    if (end < 0)
        return ((void*)0);
    struct bstr res = bstr_splice(*data, 0, end);
    *data = bstr_cut(*data, end + 1);
    return bstrto0(talloc_ctx, res);
}
