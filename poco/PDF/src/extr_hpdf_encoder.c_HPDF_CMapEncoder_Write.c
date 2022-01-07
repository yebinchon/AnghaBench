
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_Encoder ;


 int HPDF_OK ;
 int HPDF_UNUSED (int ) ;

HPDF_STATUS
HPDF_CMapEncoder_Write (HPDF_Encoder encoder,
                         HPDF_Stream out)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_UNUSED (out);
    HPDF_UNUSED (encoder);

    return ret;
}
