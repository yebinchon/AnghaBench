
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_INT ;
typedef int HPDF_BYTE ;


 int HPDF_INT_LEN ;
 char* HPDF_IToA (char*,int ,char*) ;
 int HPDF_Stream_Write (int ,int *,int ) ;

HPDF_STATUS
HPDF_Stream_WriteInt (HPDF_Stream stream,
                       HPDF_INT value)
{
    char buf[HPDF_INT_LEN + 1];

    char* p = HPDF_IToA(buf, value, buf + HPDF_INT_LEN);

    return HPDF_Stream_Write(stream, (HPDF_BYTE *)buf, (HPDF_UINT)(p - buf));
}
