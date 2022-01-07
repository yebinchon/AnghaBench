
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_BYTE ;


 int HPDF_Stream_Write (int ,int *,int) ;

HPDF_STATUS
HPDF_Stream_WriteChar (HPDF_Stream stream,
                        char value)
{
    return HPDF_Stream_Write(stream, (HPDF_BYTE *)&value, sizeof(char));
}
