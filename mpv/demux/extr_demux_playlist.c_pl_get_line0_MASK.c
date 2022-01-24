#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pl_parser {int error; TYPE_1__* s; int /*<<< orphan*/  utf16; int /*<<< orphan*/  buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  eof; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(struct pl_parser *p)
{
    char *res = FUNC0(p->s, p->buffer, sizeof(p->buffer), p->utf16);
    if (res) {
        int len = FUNC1(res);
        if (len > 0 && res[len - 1] == '\n')
            res[len - 1] = '\0';
    } else {
        p->error |= !p->s->eof;
    }
    return res;
}