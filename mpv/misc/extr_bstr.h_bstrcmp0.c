
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 int bstr0 (char const*) ;
 int bstrcmp (struct bstr,int ) ;

__attribute__((used)) static inline int bstrcmp0(struct bstr str1, const char *str2)
{
    return bstrcmp(str1, bstr0(str2));
}
