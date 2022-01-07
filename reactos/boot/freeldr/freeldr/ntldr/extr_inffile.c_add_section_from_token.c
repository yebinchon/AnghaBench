
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ token_len; int * cur_section; void* error; int token; int file; } ;
typedef int * PVOID ;
typedef int * PINFCACHESECTION ;


 void* FALSE ;
 int * InfpCacheAddSection (int ,int ) ;
 int * InfpCacheFindSection (int ,int ) ;
 scalar_t__ MAX_SECTION_NAME_LEN ;

__attribute__((used)) static
PVOID
add_section_from_token(struct parser *parser)
{
    PINFCACHESECTION Section;

    if (parser->token_len > MAX_SECTION_NAME_LEN)
    {
        parser->error = FALSE;
        return ((void*)0);
    }

    Section = InfpCacheFindSection(parser->file, parser->token);
    if (Section == ((void*)0))
    {

        Section = InfpCacheAddSection(parser->file, parser->token);
        if (Section == ((void*)0))
        {
            parser->error = FALSE;
            return ((void*)0);
        }
    }

    parser->token_len = 0;
    parser->cur_section = Section;

    return (PVOID)Section;
}
