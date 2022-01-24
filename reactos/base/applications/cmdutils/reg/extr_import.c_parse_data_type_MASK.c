#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct parser {int parse_type; unsigned int data_type; } ;
typedef  char WCHAR ;
typedef  unsigned int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FALSE ; 
#define  REG_BINARY 130 
#define  REG_DWORD 129 
#define  REG_SZ 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 char FUNC1 (char) ; 
 unsigned int FUNC2 (char*,char**,int) ; 

__attribute__((used)) static BOOL FUNC3(struct parser *parser, WCHAR **line)
{
    struct data_type { const WCHAR *tag; int len; int type; int parse_type; };

    static const WCHAR quote[] = {'"'};
    static const WCHAR hex[] = {'h','e','x',':'};
    static const WCHAR dword[] = {'d','w','o','r','d',':'};
    static const WCHAR hexp[] = {'h','e','x','('};

    static const struct data_type data_types[] = {
    /*    tag    len  type         parse type    */
        { quote,  1,  REG_SZ,      REG_SZ },
        { hex,    4,  REG_BINARY,  REG_BINARY },
        { dword,  6,  REG_DWORD,   REG_DWORD },
        { hexp,   4,  -1,          REG_BINARY }, /* REG_NONE, REG_EXPAND_SZ, REG_MULTI_SZ */
        { NULL,   0,  0,           0 }
    };

    const struct data_type *ptr;

    for (ptr = data_types; ptr->tag; ptr++)
    {
        if (FUNC0(ptr->tag, *line, ptr->len))
            continue;

        parser->parse_type = ptr->parse_type;
        parser->data_type = ptr->parse_type;
        *line += ptr->len;

        if (ptr->type == -1)
        {
            WCHAR *end;
            DWORD val;

            if (!**line || FUNC1((*line)[1]) == 'x')
                return FALSE;

            /* "hex(xx):" is special */
            val = FUNC2(*line, &end, 16);
            if (*end != ')' || *(end + 1) != ':' || (val == ~0u && errno == ERANGE))
                return FALSE;

            parser->data_type = val;
            *line = end + 2;
        }
        return TRUE;
    }
    return FALSE;
}