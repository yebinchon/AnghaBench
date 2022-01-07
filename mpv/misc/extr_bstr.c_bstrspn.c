
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int len; int * start; } ;


 int strchr (char const*,int ) ;

int bstrspn(struct bstr str, const char *accept)
{
    int i;
    for (i = 0; i < str.len; i++)
        if (!strchr(accept, str.start[i]))
            break;
    return i;
}
