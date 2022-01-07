
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int dummy; } ;
typedef char WCHAR ;
typedef scalar_t__ HKEY ;


 int LINE_START ;
 int RegDeleteTreeW (scalar_t__,char*) ;
 int close_key (struct parser*) ;
 scalar_t__ parse_key_name (char*,char**) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *delete_key_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *p = pos;

    close_key(parser);

    if (*p == 'H' || *p == 'h')
    {
        HKEY root;
        WCHAR *path;

        root = parse_key_name(p, &path);

        if (root && path && *path)
            RegDeleteTreeW(root, path);
    }

    set_state(parser, LINE_START);
    return p;
}
