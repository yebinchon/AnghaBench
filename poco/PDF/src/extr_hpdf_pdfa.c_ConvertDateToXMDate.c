
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; } ;
typedef TYPE_1__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_INVALID_PARAMETER ;
 scalar_t__ HPDF_OK ;
 scalar_t__ HPDF_SetError (int ,scalar_t__,int ) ;
 scalar_t__ HPDF_Stream_Write (TYPE_1__*,int const*,int) ;
 int strlen (char const*) ;

HPDF_STATUS ConvertDateToXMDate(HPDF_Stream stream, const char *pDate)
{
    HPDF_STATUS ret;

    if(pDate==((void*)0)) return HPDF_INVALID_PARAMETER;
    if(strlen(pDate)<16) return HPDF_INVALID_PARAMETER;
    if(pDate[0]!='D'||
        pDate[1]!=':') return HPDF_INVALID_PARAMETER;
    pDate+=2;

    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 4);
    if (ret != HPDF_OK)
        return ret;
    pDate+=4;

    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)"-", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;

    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)"-", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;

    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)"T", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;

    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)":", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;

    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)":", 1);
    if (ret != HPDF_OK)
        return ret;
    ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 2);
    if (ret != HPDF_OK)
        return ret;
    pDate+=2;

    if(pDate[0]==0) {
        ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)"Z", 1);
        return ret;
    }
    if(pDate[0]=='+'||pDate[0]=='-') {
        ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 3);
        if (ret != HPDF_OK)
            return ret;
        pDate+=4;
        ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)":", 1);
        if (ret != HPDF_OK)
            return ret;
        ret = HPDF_Stream_Write(stream, (const HPDF_BYTE*)pDate, 2);
        if (ret != HPDF_OK)
            return ret;
        return ret;
    }
    return HPDF_SetError (stream->error, HPDF_INVALID_PARAMETER, 0);
}
