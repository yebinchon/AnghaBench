
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT32 ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_OK ;
 scalar_t__ HPDF_Stream_Read (int ,int *,int*) ;
 int UINT32Swap (scalar_t__*) ;

__attribute__((used)) static HPDF_STATUS
GetUINT32 (HPDF_Stream stream,
           HPDF_UINT32 *value)
{
    HPDF_STATUS ret;
    HPDF_UINT size = sizeof (HPDF_UINT32);

    ret = HPDF_Stream_Read (stream, (HPDF_BYTE *)value, &size);
    if (ret != HPDF_OK) {
        *value = 0;
        return ret;
    }

    UINT32Swap (value);

    return HPDF_OK;
}
