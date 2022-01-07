
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int dummy; } ;
typedef char WCHAR ;


 int DELETE_KEY ;
 scalar_t__ ERROR_SUCCESS ;
 int LINE_START ;
 int STRING_OPEN_KEY_FAILED ;
 scalar_t__ open_key (struct parser*,char*) ;
 int output_message (int ,char*) ;
 int set_state (struct parser*,int ) ;
 char* strrchrW (char*,char) ;

__attribute__((used)) static WCHAR *key_name_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *p = pos, *key_end;

    if (*p == ' ' || *p == '\t' || !(key_end = strrchrW(p, ']')))
        goto done;

    *key_end = 0;

    if (*p == '-')
    {
        set_state(parser, DELETE_KEY);
        return p + 1;
    }
    else if (open_key(parser, p) != ERROR_SUCCESS)
        output_message(STRING_OPEN_KEY_FAILED, p);

done:
    set_state(parser, LINE_START);
    return p;
}
