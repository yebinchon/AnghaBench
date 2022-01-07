
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int start; int len; } ;


 int MPMIN (int ,int) ;
 struct bstr bstr_cut (struct bstr,int) ;
 struct bstr bstr_lstrip (struct bstr) ;
 int memcpy (char*,int ,int) ;
 double strtod (char*,char**) ;

double bstrtod(struct bstr str, struct bstr *rest)
{
    str = bstr_lstrip(str);
    char buf[101];
    int len = MPMIN(str.len, 100);
    memcpy(buf, str.start, len);
    buf[len] = 0;
    char *endptr;
    double r = strtod(buf, &endptr);
    if (rest)
        *rest = bstr_cut(str, endptr - buf);
    return r;
}
