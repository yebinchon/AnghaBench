
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int * LPTSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int _T (char*) ;
 scalar_t__ _tcsnicmp (int *,int ,int) ;
 scalar_t__ chop_blank (int **) ;
 int txt_clr (int *) ;

__attribute__((used)) static
WORD str_to_color(LPTSTR* arg_str)
{
    LPTSTR str;
    BOOL bBri;

    WORD tmp_clr,ret_clr;

    str = *arg_str;

    if (!(*str))
        return (WORD)-1;


    bBri = FALSE;

    if (_tcsnicmp(str,_T("bri"),3) == 0)
    {
        bBri = TRUE;

        if (chop_blank(&str))
            return (WORD)-1;
    }

    if ((tmp_clr = txt_clr(str)) == (WORD)-1)
    {
        return (WORD)-1;
    }


    if (chop_blank(&str) || chop_blank(&str))
        return (WORD)-1;

    ret_clr = tmp_clr | (bBri << 3);


    bBri = FALSE;

    if (_tcsnicmp(str,_T("bri"),3) == 0 )
    {
        bBri = TRUE;

        if (chop_blank(&str))
            return (WORD)-1;
    }

    if ( (tmp_clr = txt_clr(str)) == (WORD)-1 )
        return (WORD)-1;

    chop_blank(&str);

    *arg_str = str;


    return ret_clr | tmp_clr << 4 | bBri << 7;
}
