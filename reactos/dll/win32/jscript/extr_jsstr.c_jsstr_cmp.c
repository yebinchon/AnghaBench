
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int WCHAR ;


 int jsstr_as_rope (int *) ;
 int jsstr_cmp_str (int *,int const*,int ) ;
 unsigned int jsstr_length (int *) ;
 int * jsstr_try_flat (int *) ;
 int min (unsigned int,unsigned int) ;
 int ropes_cmp (int ,int ) ;

int jsstr_cmp(jsstr_t *str1, jsstr_t *str2)
{
    unsigned len1 = jsstr_length(str1);
    unsigned len2 = jsstr_length(str2);
    const WCHAR *str;
    int ret;

    str = jsstr_try_flat(str2);
    if(str) {
        ret = jsstr_cmp_str(str1, str, min(len1, len2));
        return ret || len1 == len2 ? ret : -1;
    }

    str = jsstr_try_flat(str1);
    if(str) {
        ret = jsstr_cmp_str(str2, str, min(len1, len2));
        return ret || len1 == len2 ? -ret : 1;
    }

    return ropes_cmp(jsstr_as_rope(str1), jsstr_as_rope(str2));
}
