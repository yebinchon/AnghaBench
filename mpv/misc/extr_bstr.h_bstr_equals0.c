
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 int bstr0 (char const*) ;
 int bstr_equals (struct bstr,int ) ;

__attribute__((used)) static inline bool bstr_equals0(struct bstr str1, const char *str2)
{
    return bstr_equals(str1, bstr0(str2));
}
