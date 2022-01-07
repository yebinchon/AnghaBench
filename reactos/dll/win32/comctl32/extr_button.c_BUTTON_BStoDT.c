
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;




 scalar_t__ BS_DEFPUSHBUTTON ;
 scalar_t__ BS_GROUPBOX ;

 int BS_MULTILINE ;
 int BS_PUSHLIKE ;


 int BS_TYPEMASK ;

 int DT_BOTTOM ;
 int DT_CENTER ;
 int DT_LEFT ;
 int DT_NOCLIP ;
 int DT_RIGHT ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DT_WORDBREAK ;
 int WS_EX_RIGHT ;
 scalar_t__ get_button_type (int) ;

__attribute__((used)) static UINT BUTTON_BStoDT( DWORD style, DWORD ex_style )
{
    UINT dtStyle = DT_NOCLIP;


    if (style & BS_PUSHLIKE)
        style &= ~BS_TYPEMASK;

    if (!(style & BS_MULTILINE))
        dtStyle |= DT_SINGLELINE;
    else
        dtStyle |= DT_WORDBREAK;

    switch (style & 132)
    {
        case 131: break;
        case 130: dtStyle |= DT_RIGHT; break;
        case 132: dtStyle |= DT_CENTER; break;
        default:

            if (get_button_type(style) <= BS_DEFPUSHBUTTON) dtStyle |= DT_CENTER;

    }

    if (ex_style & WS_EX_RIGHT) dtStyle = DT_RIGHT | (dtStyle & ~(DT_LEFT | DT_CENTER));




    if (get_button_type(style) != BS_GROUPBOX)
    {
        switch (style & 128)
        {
            case 129: break;
            case 133: dtStyle |= DT_BOTTOM; break;
            case 128:
            default: dtStyle |= DT_VCENTER; break;
        }
    }
    else

        dtStyle |= DT_SINGLELINE;

    return dtStyle;
}
