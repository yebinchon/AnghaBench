
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int start; int len; } ;


 int MPMIN (int ,int) ;
 struct bstr bstr_cut (struct bstr,int) ;
 struct bstr bstr_lstrip (struct bstr) ;
 int memcpy (char*,int ,int) ;
 long long strtoll (char*,char**,int) ;

long long bstrtoll(struct bstr str, struct bstr *rest, int base)
{
    str = bstr_lstrip(str);
    char buf[51];
    int len = MPMIN(str.len, 50);
    memcpy(buf, str.start, len);
    buf[len] = 0;
    char *endptr;
    long long r = strtoll(buf, &endptr, base);
    if (rest)
        *rest = bstr_cut(str, endptr - buf);
    return r;
}
