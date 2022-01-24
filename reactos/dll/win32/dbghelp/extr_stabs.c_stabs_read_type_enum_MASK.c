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
struct symt {int dummy; } ;

/* Variables and functions */
 struct symt** FUNC0 (long,long) ; 
 long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static struct symt** FUNC2(const char** x)
{
    long        filenr, subnr;
    const char* iter;
    char*       end;

    iter = *x;
    if (*iter == '(')
    {
        ++iter;                             /* '('   */
        filenr = FUNC1(iter, &end, 10);    /* <int> */
        iter = ++end;                       /* ','   */
        subnr = FUNC1(iter, &end, 10);     /* <int> */
        iter = ++end;                       /* ')'   */
    }
    else
    {
        filenr = 0;
        subnr = FUNC1(iter, &end, 10);     /* <int> */
        iter = end;
    }
    *x = iter;
    return FUNC0(filenr, subnr);
}