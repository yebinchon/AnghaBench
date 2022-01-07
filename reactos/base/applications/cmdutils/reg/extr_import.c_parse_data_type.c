
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int parse_type; unsigned int data_type; } ;
typedef char WCHAR ;
typedef unsigned int DWORD ;
typedef int BOOL ;


 scalar_t__ ERANGE ;
 int FALSE ;



 int TRUE ;
 scalar_t__ errno ;
 scalar_t__ strncmpW (char const*,char*,int) ;
 char tolowerW (char) ;
 unsigned int wcstoul (char*,char**,int) ;

__attribute__((used)) static BOOL parse_data_type(struct parser *parser, WCHAR **line)
{
    struct data_type { const WCHAR *tag; int len; int type; int parse_type; };

    static const WCHAR quote[] = {'"'};
    static const WCHAR hex[] = {'h','e','x',':'};
    static const WCHAR dword[] = {'d','w','o','r','d',':'};
    static const WCHAR hexp[] = {'h','e','x','('};

    static const struct data_type data_types[] = {

        { quote, 1, 128, 128 },
        { hex, 4, 130, 130 },
        { dword, 6, 129, 129 },
        { hexp, 4, -1, 130 },
        { ((void*)0), 0, 0, 0 }
    };

    const struct data_type *ptr;

    for (ptr = data_types; ptr->tag; ptr++)
    {
        if (strncmpW(ptr->tag, *line, ptr->len))
            continue;

        parser->parse_type = ptr->parse_type;
        parser->data_type = ptr->parse_type;
        *line += ptr->len;

        if (ptr->type == -1)
        {
            WCHAR *end;
            DWORD val;

            if (!**line || tolowerW((*line)[1]) == 'x')
                return FALSE;


            val = wcstoul(*line, &end, 16);
            if (*end != ')' || *(end + 1) != ':' || (val == ~0u && errno == ERANGE))
                return FALSE;

            parser->data_type = val;
            *line = end + 2;
        }
        return TRUE;
    }
    return FALSE;
}
