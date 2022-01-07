
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef scalar_t__ HPDF_INT32 ;
typedef scalar_t__ HPDF_INT ;
typedef int HPDF_BYTE ;


 int HPDF_LIMIT_MAX_NAME_LEN ;
 scalar_t__ HPDF_NEEDS_ESCAPE (int) ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_StrLen (char const*,int) ;
 int HPDF_Stream_Write (int ,int*,scalar_t__) ;

HPDF_STATUS
HPDF_Stream_WriteEscapeName (HPDF_Stream stream,
                              const char *value)
{
    char tmp_char[HPDF_LIMIT_MAX_NAME_LEN * 3 + 2];
    HPDF_UINT len;
    HPDF_INT i;
    const HPDF_BYTE* pos1;
    char* pos2;

    HPDF_PTRACE((" HPDF_Stream_WriteEscapeName\n"));

    len = HPDF_StrLen (value, HPDF_LIMIT_MAX_NAME_LEN);
    pos1 = (HPDF_BYTE*)value;
    pos2 = tmp_char;

    *pos2++ = '/';
    for (i = 0; i < (HPDF_INT32)len; i++) {
        HPDF_BYTE c = *pos1++;
        if (HPDF_NEEDS_ESCAPE(c)) {
            *pos2++ = '#';
            *pos2 = (char)(c >> 4);
            if (*pos2 <= 9)
                *pos2 += 0x30;
            else
                *pos2 += 0x41 - 10;
            pos2++;

            *pos2 = (char)(c & 0x0f);
            if (*pos2 <= 9)
                *pos2 += 0x30;
            else
                *pos2 += 0x41 - 10;
            pos2++;
        } else
            *pos2++ = c;
    }
    *pos2 = 0;

    return HPDF_Stream_Write (stream, (HPDF_BYTE *)tmp_char, HPDF_StrLen(tmp_char, -1));
}
