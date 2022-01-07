
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_BYTE ;


 int HPDF_StrLen (char const*,int) ;
 int HPDF_Stream_Write (int ,int *,int ) ;

HPDF_STATUS
HPDF_Stream_WriteStr (HPDF_Stream stream,
                       const char *value)
{
    HPDF_UINT len = HPDF_StrLen(value, -1);

    return HPDF_Stream_Write(stream, (HPDF_BYTE *)value, len);
}
