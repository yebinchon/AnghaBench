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
typedef  int /*<<< orphan*/  temp ;
struct m_property {int dummy; } ;
typedef  int /*<<< orphan*/  MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int,void*,char*) ; 

__attribute__((used)) static int FUNC2(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    MPContext *mpctx = ctx;
    char temp[20];
    FUNC0(mpctx, temp, sizeof(temp));
    return FUNC1(action, arg, temp);
}