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
struct m_property {char* priv; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,void*,void*) ; 

__attribute__((used)) static int FUNC1(void *ctx, struct m_property *prop,
                             int action, void *arg)
{
    const char *real_property = prop->priv;
    return FUNC0(real_property, action, arg, ctx);
}