
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int ITypeLib ;


 int ITypeLib_Release (int *) ;
 scalar_t__ Z_PTR_P (int *) ;

void php_com_typelibrary_dtor(zval *pDest)
{
 ITypeLib *Lib = (ITypeLib*)Z_PTR_P(pDest);
 ITypeLib_Release(Lib);
}
