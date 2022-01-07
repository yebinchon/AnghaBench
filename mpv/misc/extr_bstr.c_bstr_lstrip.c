
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ len; int * start; } ;


 scalar_t__ mp_isspace (int ) ;

struct bstr bstr_lstrip(struct bstr str)
{
    while (str.len && mp_isspace(*str.start)) {
        str.start++;
        str.len--;
    }
    return str;
}
