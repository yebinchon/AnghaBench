
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;


 int HPDF_LIMIT_MAX_STRING_LEN ;
 int HPDF_PTRACE (char*) ;
 int HPDF_StrLen (char const*,int ) ;
 int HPDF_Stream_WriteEscapeText2 (int ,char const*,int ) ;

HPDF_STATUS
HPDF_Stream_WriteEscapeText (HPDF_Stream stream,
                              const char *text)
{
    HPDF_UINT len;

    HPDF_PTRACE((" HPDF_Stream_WriteEscapeText\n"));

    len = (text == ((void*)0)) ? 0 : HPDF_StrLen (text, HPDF_LIMIT_MAX_STRING_LEN);

    return HPDF_Stream_WriteEscapeText2(stream, text, len);
}
