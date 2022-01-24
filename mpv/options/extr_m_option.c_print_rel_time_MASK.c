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
struct m_rel_time {int type; int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
#define  REL_TIME_ABSOLUTE 131 
#define  REL_TIME_CHAPTER 130 
#define  REL_TIME_PERCENT 129 
#define  REL_TIME_RELATIVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char *FUNC3(const m_option_t *opt, const void *val)
{
    const struct m_rel_time *t = val;
    switch(t->type) {
    case REL_TIME_ABSOLUTE:
        return FUNC1(NULL, "%g", t->pos);
    case REL_TIME_RELATIVE:
        return FUNC1(NULL, "%s%g",
            (t->pos >= 0) ? "+" : "-", FUNC0(t->pos));
    case REL_TIME_CHAPTER:
        return FUNC1(NULL, "#%g", t->pos);
    case REL_TIME_PERCENT:
        return FUNC1(NULL, "%g%%", t->pos);
    }
    return FUNC2(NULL, "none");
}