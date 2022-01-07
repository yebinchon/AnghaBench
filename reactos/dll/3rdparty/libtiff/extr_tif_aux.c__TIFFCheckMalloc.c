
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmsize_t ;
typedef int TIFF ;


 void* _TIFFCheckRealloc (int *,int *,int ,int ,char const*) ;

void*
_TIFFCheckMalloc(TIFF* tif, tmsize_t nmemb, tmsize_t elem_size, const char* what)
{
 return _TIFFCheckRealloc(tif, ((void*)0), nmemb, elem_size, what);
}
