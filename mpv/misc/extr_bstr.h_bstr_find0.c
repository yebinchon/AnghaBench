
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 int bstr0 (char const*) ;
 int bstr_find (struct bstr,int ) ;

__attribute__((used)) static inline int bstr_find0(struct bstr haystack, const char *needle)
{
    return bstr_find(haystack, bstr0(needle));
}
