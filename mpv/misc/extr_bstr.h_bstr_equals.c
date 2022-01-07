
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ len; scalar_t__ start; } ;


 scalar_t__ bstrcmp (struct bstr,struct bstr) ;

__attribute__((used)) static inline bool bstr_equals(struct bstr str1, struct bstr str2)
{
    if (str1.len != str2.len)
        return 0;

    return str1.start == str2.start || bstrcmp(str1, str2) == 0;
}
