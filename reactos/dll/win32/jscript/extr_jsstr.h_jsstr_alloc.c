
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int WCHAR ;


 int * jsstr_alloc_len (int const*,int ) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static inline jsstr_t *jsstr_alloc(const WCHAR *str)
{
    return jsstr_alloc_len(str, lstrlenW(str));
}
