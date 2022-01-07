
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int SF_RTF ;
 int SF_TEXT ;
 int key_rtf ;
 int key_text ;
 int reg_formatindex (int ) ;
 int registry_read_formatopts (int ,int ,int *,int *) ;

void registry_read_formatopts_all(DWORD barState[], DWORD wordWrap[])
{
    registry_read_formatopts(reg_formatindex(SF_RTF), key_rtf, barState, wordWrap);
    registry_read_formatopts(reg_formatindex(SF_TEXT), key_text, barState, wordWrap);
}
