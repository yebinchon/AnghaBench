
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef scalar_t__ HPDF_INT16 ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_OK ;
 scalar_t__ HPDF_Stream_Read (int ,int *,int*) ;
 int INT16Swap (scalar_t__*) ;

__attribute__((used)) static HPDF_STATUS
GetINT16 (HPDF_Stream stream,
          HPDF_INT16 *value)
{
    HPDF_STATUS ret;
    HPDF_UINT size = sizeof (HPDF_INT16);

    ret = HPDF_Stream_Read (stream, (HPDF_BYTE *)value, &size);
    if (ret != HPDF_OK) {
        *value = 0;
        return ret;
    }

    INT16Swap (value);

    return HPDF_OK;
}
