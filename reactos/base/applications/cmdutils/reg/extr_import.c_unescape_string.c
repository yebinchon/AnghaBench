
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int STRING_ESCAPE_SEQUENCE ;
 int lstrlenW (char*) ;
 int output_message (int ,char) ;

__attribute__((used)) static BOOL unescape_string(WCHAR *str, WCHAR **unparsed)
{
    int str_idx = 0;
    int val_idx = 0;
    int len = lstrlenW(str);
    BOOL ret;

    for (str_idx = 0; str_idx < len; str_idx++, val_idx++)
    {
        if (str[str_idx] == '\\')
        {
            str_idx++;
            switch (str[str_idx])
            {
            case 'n':
                str[val_idx] = '\n';
                break;
            case 'r':
                str[val_idx] = '\r';
                break;
            case '0':
                str[val_idx] = '\0';
                break;
            case '\\':
            case '"':
                str[val_idx] = str[str_idx];
                break;
            default:
                if (!str[str_idx]) return FALSE;
                output_message(STRING_ESCAPE_SEQUENCE, str[str_idx]);
                str[val_idx] = str[str_idx];
                break;
            }
        }
        else if (str[str_idx] == '"')
            break;
        else
            str[val_idx] = str[str_idx];
    }

    ret = (str[str_idx] == '"');
    *unparsed = str + str_idx + 1;
    str[val_idx] = '\0';
    return ret;
}
