
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int DWORD ;
typedef char CHAR ;


 int FIXME (char*,char*) ;
 int PSH_RTLREADING ;
 int PSH_STRETCHWATERMARK ;
 int PSH_USEPAGELANG ;
 int add_flag (int ) ;

__attribute__((used)) static VOID PROPSHEET_UnImplementedFlags(DWORD dwFlags)
{
    CHAR string[256];

    string[0] = '\0';
    add_flag(PSH_RTLREADING);
    add_flag(PSH_STRETCHWATERMARK);
    add_flag(PSH_USEPAGELANG);
    if (string[0] != '\0')
 FIXME("%s\n", string);
}
