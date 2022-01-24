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
struct pts_range_value {int sign; int val; } ;
struct ParseTypedefData {int* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ParseTypedefData*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 void* FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int FUNC3(struct ParseTypedefData* ptd, struct pts_range_value* prv)
{
    char*	last;

    switch (*ptd->ptr)
    {
    case '0':
        while (*ptd->ptr == '0') ptd->ptr++;
        if (*ptd->ptr >= '1' && *ptd->ptr <= '7')
        {
            switch (ptd->ptr[1])
            {
            case '0': 
                FUNC0(ptd, ptd->ptr[0] != '1');
                prv->sign = -1;
                prv->val = 0;
                while (FUNC1(*ptd->ptr)) prv->val = (prv->val << 3) + *ptd->ptr++ - '0';
                break;
            case '7':
                prv->sign = 1;
                prv->val = 0;
                while (FUNC1(*ptd->ptr)) prv->val = (prv->val << 3) + *ptd->ptr++ - '0';
                break;
            default: FUNC0(ptd, 1); break;
            }
        } else prv->sign = 0;
        break;
    case '-':
        prv->sign = -1;
        prv->val = FUNC2(++ptd->ptr, &last, 10);
        ptd->ptr = last;
        break;
    case '+':
    default:    
        prv->sign = 1;
        prv->val = FUNC2(ptd->ptr, &last, 10);
        ptd->ptr = last;
        break;
    }
    return 0;
}