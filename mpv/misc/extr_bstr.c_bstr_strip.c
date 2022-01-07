
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int len; int * start; } ;


 struct bstr bstr_lstrip (struct bstr) ;
 scalar_t__ mp_isspace (int ) ;

struct bstr bstr_strip(struct bstr str)
{
    str = bstr_lstrip(str);
    while (str.len && mp_isspace(str.start[str.len - 1]))
        str.len--;
    return str;
}
