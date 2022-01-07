
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int HPDF_UINT16 ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_OK ;
 scalar_t__ HPDF_Stream_Write (int ,int *,int) ;
 int UINT16Swap (int *) ;

__attribute__((used)) static HPDF_STATUS
WriteUINT16 (HPDF_Stream stream,
             HPDF_UINT16 value)
{
    HPDF_STATUS ret;
    HPDF_UINT16 tmp = value;

    UINT16Swap (&tmp);

    ret = HPDF_Stream_Write (stream, (HPDF_BYTE *)&tmp, sizeof(tmp));
    if (ret != HPDF_OK)
        return ret;

    return HPDF_OK;
}
