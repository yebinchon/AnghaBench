
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int start; } ;
typedef TYPE_1__ bstr ;


 int MP_TARRAY_GROW (int *,char*,int) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static void append_str(char **s, int *len, bstr append)
{
    MP_TARRAY_GROW(((void*)0), *s, *len + append.len);
    if (append.len)
        memcpy(*s + *len, append.start, append.len);
    *len = *len + append.len;
}
