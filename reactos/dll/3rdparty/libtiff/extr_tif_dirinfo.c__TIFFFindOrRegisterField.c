
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int TIFFField ;
typedef int TIFFDataType ;
typedef int TIFF ;


 int * TIFFFindField (int *,int ,int ) ;
 int * _TIFFCreateAnonField (int *,int ,int ) ;
 int _TIFFMergeFields (int *,int const*,int) ;

const TIFFField*
_TIFFFindOrRegisterField(TIFF *tif, uint32 tag, TIFFDataType dt)

{
 const TIFFField *fld;

 fld = TIFFFindField(tif, tag, dt);
 if (fld == ((void*)0)) {
  fld = _TIFFCreateAnonField(tif, tag, dt);
  if (!_TIFFMergeFields(tif, fld, 1))
   return ((void*)0);
 }

 return fld;
}
