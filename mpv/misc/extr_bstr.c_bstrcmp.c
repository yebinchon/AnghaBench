
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ len; int start; } ;


 int MPMIN (scalar_t__,scalar_t__) ;
 int memcmp (int ,int ,int ) ;

int bstrcmp(struct bstr str1, struct bstr str2)
{
    int ret = 0;
    if (str1.len && str2.len)
        ret = memcmp(str1.start, str2.start, MPMIN(str1.len, str2.len));

    if (!ret) {
        if (str1.len == str2.len)
            return 0;
        else if (str1.len > str2.len)
            return 1;
        else
            return -1;
    }
    return ret;
}
