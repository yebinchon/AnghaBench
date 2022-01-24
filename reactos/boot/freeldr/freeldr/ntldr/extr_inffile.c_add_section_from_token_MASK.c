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
struct parser {scalar_t__ token_len; int /*<<< orphan*/ * cur_section; void* error; int /*<<< orphan*/  token; int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PINFCACHESECTION ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_SECTION_NAME_LEN ; 

__attribute__((used)) static
PVOID
FUNC2(struct parser *parser)
{
    PINFCACHESECTION Section;

    if (parser->token_len > MAX_SECTION_NAME_LEN)
    {
        parser->error = FALSE;
        return NULL;
    }

    Section = FUNC1(parser->file, parser->token);
    if (Section == NULL)
    {
        /* need to create a new one */
        Section = FUNC0(parser->file, parser->token);
        if (Section == NULL)
        {
            parser->error = FALSE;
            return NULL;
        }
    }

    parser->token_len = 0;
    parser->cur_section = Section;

    return (PVOID)Section;
}