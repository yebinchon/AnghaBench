
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef int HPDF_REAL ;
typedef int HPDF_BYTE ;


 char* HPDF_FToA (char*,int ,char*) ;
 int HPDF_REAL_LEN ;
 int HPDF_Stream_Write (int ,int *,int ) ;

HPDF_STATUS
HPDF_Stream_WriteReal (HPDF_Stream stream,
                        HPDF_REAL value)
{
    char buf[HPDF_REAL_LEN + 1];

    char* p = HPDF_FToA(buf, value, buf + HPDF_REAL_LEN);

    return HPDF_Stream_Write(stream, (HPDF_BYTE *)buf, (HPDF_UINT)(p - buf));
}
