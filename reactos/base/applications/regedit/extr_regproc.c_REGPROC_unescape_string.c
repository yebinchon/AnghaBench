
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int fprintf (int ,char*,char) ;
 int lstrlenW (char*) ;
 int stderr ;

__attribute__((used)) static void REGPROC_unescape_string(WCHAR* str)
{
    int str_idx = 0;
    int val_idx = 0;
    int len = lstrlenW(str);
    for (str_idx = 0; str_idx < len; str_idx++, val_idx++) {
        if (str[str_idx] == '\\') {
            str_idx++;
            switch (str[str_idx]) {
            case 'n':
                str[val_idx] = '\n';
                break;
            case '\\':
            case '"':
                str[val_idx] = str[str_idx];
                break;
            default:
                fprintf(stderr,"Warning! Unrecognized escape sequence: \\%c'\n",
                        str[str_idx]);
                str[val_idx] = str[str_idx];
                break;
            }
        } else {
            str[val_idx] = str[str_idx];
        }
    }
    str[val_idx] = '\0';
}
