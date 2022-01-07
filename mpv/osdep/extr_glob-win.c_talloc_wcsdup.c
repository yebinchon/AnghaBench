
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * talloc_memdup (void*,void*,size_t) ;
 int wcslen (int const*) ;

__attribute__((used)) static wchar_t *talloc_wcsdup(void *ctx, const wchar_t *wcs)
{
    size_t len = (wcslen(wcs) + 1) * sizeof(wchar_t);
    return talloc_memdup(ctx, (void*)wcs, len);
}
