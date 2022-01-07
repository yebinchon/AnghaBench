
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsize_t ;
typedef int tidata_t ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;


 scalar_t__ HPDF_OK ;
 scalar_t__ HPDF_Stream_Write (int ,int ,int ) ;

__attribute__((used)) static HPDF_STATUS
HPDF_CCITT_AppendToStream(HPDF_Stream dst,
        tidata_t tif_rawdata,
        tsize_t tif_rawcc)
{
 if(HPDF_Stream_Write(dst, tif_rawdata, tif_rawcc)!=HPDF_OK)
  return 1;
 return HPDF_OK;
}
