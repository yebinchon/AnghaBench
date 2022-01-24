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
struct symtab {struct symtab* next; int /*<<< orphan*/  hash; } ;
struct parser {struct symtab* symtab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC1 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct parser *parser)
{
    struct symtab *tab = parser->symtab;

    FUNC0(tab);

    FUNC2(tab->hash);
    parser->symtab = tab->next;
    FUNC1(tab);
}