
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int error; scalar_t__ token_len; int token; int * line; int * cur_section; } ;
struct field {int dummy; } ;
typedef struct field* PVOID ;


 int FALSE ;
 struct field* InfpAddFieldToLine (int *,int ) ;
 struct field* InfpAddKeyToLine (int *,int ) ;
 int * InfpCacheAddLine (int *) ;
 int STATUS_WRONG_INF_STYLE ;

__attribute__((used)) static
struct field*
add_field_from_token(
    struct parser *parser,
    int is_key)
{
    PVOID field;

    if (!parser->line)
    {
        if (parser->cur_section == ((void*)0))
        {
            parser->error = STATUS_WRONG_INF_STYLE;
            return ((void*)0);
        }

        parser->line = InfpCacheAddLine(parser->cur_section);
        if (parser->line == ((void*)0))
            goto error;
    }
    else
    {

    }

    if (is_key)
    {
        field = InfpAddKeyToLine(parser->line, parser->token);
    }
    else
    {
        field = InfpAddFieldToLine(parser->line, parser->token);
    }

    if (field != ((void*)0))
    {
        parser->token_len = 0;
        return field;
    }

error:
    parser->error = FALSE;
    return ((void*)0);
}
