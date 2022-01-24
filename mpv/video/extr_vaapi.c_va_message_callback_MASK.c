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
struct mp_vaapi_ctx {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char const*) ; 

__attribute__((used)) static void FUNC1(void *context, const char *msg, int mp_level)
{
    struct mp_vaapi_ctx *res = context;
    FUNC0(res->log, mp_level, "libva: %s", msg);
}