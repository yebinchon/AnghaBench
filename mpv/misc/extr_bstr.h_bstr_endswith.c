
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ len; scalar_t__ start; } ;


 int memcmp (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline bool bstr_endswith(struct bstr str, struct bstr suffix)
{
    if (str.len < suffix.len)
        return 0;
    return !memcmp(str.start + str.len - suffix.len, suffix.start, suffix.len);
}
