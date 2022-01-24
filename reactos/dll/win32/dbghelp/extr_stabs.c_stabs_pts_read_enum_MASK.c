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
struct symt_enum {int dummy; } ;
struct ParseTypedefData {char* ptr; int idx; scalar_t__ buf; int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ParseTypedefData*,int) ; 
 int FUNC1 (struct ParseTypedefData*) ; 
 int FUNC2 (struct ParseTypedefData*,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct symt_enum*,scalar_t__,long) ; 

__attribute__((used)) static inline int FUNC4(struct ParseTypedefData* ptd, 
                                      struct symt_enum* edt)
{
    long        value;
    int		idx;

    while (*ptd->ptr != ';')
    {
	idx = ptd->idx;
	FUNC0(ptd, FUNC1(ptd) == -1);
	FUNC0(ptd, FUNC2(ptd, &value) == -1);
	FUNC0(ptd, *ptd->ptr++ != ',');
	FUNC3(ptd->module, edt, ptd->buf + idx, value);
	ptd->idx = idx;
    }
    ptd->ptr++;
    return 0;
}