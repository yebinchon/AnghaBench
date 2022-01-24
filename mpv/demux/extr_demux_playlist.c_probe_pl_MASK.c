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
struct pl_parser {int force; int /*<<< orphan*/  s; } ;
struct pl_format {scalar_t__ (* parse ) (struct pl_parser*) ;int /*<<< orphan*/  mime_types; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int FUNC0 (struct pl_format*) ; 
 int /*<<< orphan*/  FUNC1 (struct pl_parser*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pl_format* formats ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pl_parser*) ; 

__attribute__((used)) static const struct pl_format *FUNC6(struct pl_parser *p)
{
    int64_t start = FUNC4(p->s);
    for (int n = 0; n < FUNC0(formats); n++) {
        const struct pl_format *fmt = &formats[n];
        FUNC3(p->s, start);
        if (FUNC2(p->s, fmt->mime_types)) {
            FUNC1(p, "forcing format by mime-type.\n");
            p->force = true;
            return fmt;
        }
        if (fmt->parse(p) >= 0)
            return fmt;
    }
    return NULL;
}