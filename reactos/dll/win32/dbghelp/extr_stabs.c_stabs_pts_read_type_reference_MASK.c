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
struct ParseTypedefData {char* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ParseTypedefData*,int) ; 
 int FUNC1 (struct ParseTypedefData*,long*) ; 

__attribute__((used)) static int FUNC2(struct ParseTypedefData* ptd,
                                         long* filenr, long* subnr)
{
    if (*ptd->ptr == '(')
    {
	/* '(' <int> ',' <int> ')' */
	ptd->ptr++;
	FUNC0(ptd, FUNC1(ptd, filenr) == -1);
	FUNC0(ptd, *ptd->ptr++ != ',');
	FUNC0(ptd, FUNC1(ptd, subnr) == -1);
	FUNC0(ptd, *ptd->ptr++ != ')');
    }
    else
    {
    	*filenr = 0;
	FUNC0(ptd, FUNC1(ptd, subnr) == -1);
    }
    return 0;
}