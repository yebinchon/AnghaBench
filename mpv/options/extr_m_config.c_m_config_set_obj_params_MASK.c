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
struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct m_obj_desc {int dummy; } ;
struct m_config {int dummy; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct m_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct m_config *config, struct mp_log *log,
                                   struct mpv_global *global,
                                   struct m_obj_desc *desc, char **args)
{
    for (int n = 0; args && args[n * 2 + 0]; n++) {
        bstr opt = FUNC0(args[n * 2 + 0]);
        bstr val = FUNC0(args[n * 2 + 1]);
        if (FUNC1(config, opt, val, 0) < 0)
            return -1;
    }

    return 0;
}