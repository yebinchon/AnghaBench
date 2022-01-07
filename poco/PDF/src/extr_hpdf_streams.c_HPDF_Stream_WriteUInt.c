
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_INT ;


 int HPDF_Stream_WriteInt (int ,int ) ;

HPDF_STATUS
HPDF_Stream_WriteUInt (HPDF_Stream stream,
                        HPDF_UINT value)
{
    return HPDF_Stream_WriteInt(stream, (HPDF_INT)value);
}
