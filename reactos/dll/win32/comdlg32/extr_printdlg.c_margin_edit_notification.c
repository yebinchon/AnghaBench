
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int WORD ;
typedef int WCHAR ;
typedef int LONG ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;


 int GetDlgItemTextW (int ,int,int *,int ) ;
 int* element_from_margin_id (int ,int) ;
 int get_decimal_sep () ;
 int is_metric (int const*) ;
 int iswdigit (int ) ;
 int pagesetup_get_margin_rect (int const*) ;
 int update_margin_edits (int ,int const*,int) ;
 int wcstol (int *,int **,int) ;

__attribute__((used)) static void margin_edit_notification(HWND hDlg, const pagesetup_data *data, WORD msg, WORD id)
{
    switch (msg)
    {
    case 129:
      {
        WCHAR buf[10];
        LONG val = 0;
        LONG *value = element_from_margin_id(pagesetup_get_margin_rect(data), id);

        if (GetDlgItemTextW(hDlg, id, buf, ARRAY_SIZE(buf)) != 0)
        {
            WCHAR *end;
            WCHAR decimal = get_decimal_sep();

            val = wcstol(buf, &end, 10);
            if(end != buf || *end == decimal)
            {
                int mult = is_metric(data) ? 100 : 1000;
                val *= mult;
                if(*end == decimal)
                {
                    while(mult > 1)
                    {
                        end++;
                        mult /= 10;
                        if(iswdigit(*end))
                            val += (*end - '0') * mult;
                        else
                            break;
                    }
                }
            }
        }
        *value = val;
        return;
      }

    case 128:
        update_margin_edits(hDlg, data, id);
        return;
    }
}
