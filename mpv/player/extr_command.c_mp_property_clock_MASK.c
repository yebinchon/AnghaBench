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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct m_property {int dummy; } ;
typedef  int /*<<< orphan*/  outstr ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,void*,char*) ; 
 int FUNC2 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *ctx, struct m_property *prop,
                             int action, void *arg)
{
    char outstr[6];
    time_t t = FUNC3(NULL);
    struct tm *tmp = FUNC0(&t);

    if ((tmp != NULL) && (FUNC2(outstr, sizeof(outstr), "%H:%M", tmp) == 5))
        return FUNC1(action, arg, outstr);
    return M_PROPERTY_UNAVAILABLE;
}