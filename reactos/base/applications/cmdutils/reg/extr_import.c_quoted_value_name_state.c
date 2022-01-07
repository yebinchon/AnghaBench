
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int * value_name; } ;
typedef int WCHAR ;


 int DATA_START ;
 int LINE_START ;
 int heap_free (int *) ;
 int * heap_xalloc (int) ;
 int lstrcpyW (int *,int *) ;
 int lstrlenW (int *) ;
 int set_state (struct parser*,int ) ;
 int unescape_string (int *,int **) ;

__attribute__((used)) static WCHAR *quoted_value_name_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *val_name = pos, *p;

    if (parser->value_name)
    {
        heap_free(parser->value_name);
        parser->value_name = ((void*)0);
    }

    if (!unescape_string(val_name, &p))
        goto invalid;


    parser->value_name = heap_xalloc((lstrlenW(val_name) + 1) * sizeof(WCHAR));
    lstrcpyW(parser->value_name, val_name);

    set_state(parser, DATA_START);
    return p;

invalid:
    set_state(parser, LINE_START);
    return val_name;
}
