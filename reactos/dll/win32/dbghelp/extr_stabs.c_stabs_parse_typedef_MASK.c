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
struct symt {int dummy; } ;
struct module {int dummy; } ;
struct ParseTypedefData {int err_idx; char const* ptr; TYPE_1__* errors; scalar_t__ idx; struct module* module; } ;
struct TYPE_2__ {char const* ptr; int /*<<< orphan*/  line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (struct ParseTypedefData*,char const*,struct symt**) ; 
 char const* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(struct module* module, const char* ptr, 
                               const char* typename)
{
    struct ParseTypedefData	ptd;
    struct symt*                dt;
    int				ret = -1;

    /* check for already existing definition */

    FUNC1("%s => %s\n", typename, FUNC2(ptr));
    ptd.module = module;
    ptd.idx = 0;
#ifdef PTS_DEBUG
    ptd.err_idx = 0;
#endif
    for (ptd.ptr = ptr - 1; ;)
    {
        ptd.ptr = FUNC4(ptd.ptr + 1, ':');
        if (ptd.ptr == NULL || *++ptd.ptr != ':') break;
    }
    if (ptd.ptr)
    {
	if (*ptd.ptr != '(') ptd.ptr++;
        /* most of type definitions take one char, except Tt */
	if (*ptd.ptr != '(') ptd.ptr++;
	ret = FUNC3(&ptd, typename, &dt);
    }

    if (ret == -1 || *ptd.ptr) 
    {
#ifdef PTS_DEBUG
        int     i;
	TRACE("Failure on %s\n", debugstr_a(ptr));
        if (ret == -1)
        {
            for (i = 0; i < ptd.err_idx; i++)
            {
                TRACE("[%d]: line %d => %s\n", 
                      i, ptd.errors[i].line, debugstr_a(ptd.errors[i].ptr));
            }
        }
        else
            TRACE("[0]: => %s\n", debugstr_a(ptd.ptr));
            
#else
	FUNC0("Failure on %s at %s\n", FUNC2(ptr), FUNC2(ptd.ptr));
#endif
	return FALSE;
    }

    return TRUE;
}