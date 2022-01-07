
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ len; int start; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline bool bstr_startswith(struct bstr str, struct bstr prefix)
{
    if (str.len < prefix.len)
        return 0;
    return !memcmp(str.start, prefix.start, prefix.len);
}
