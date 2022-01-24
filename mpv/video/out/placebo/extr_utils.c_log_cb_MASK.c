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
struct mp_log {int dummy; } ;
typedef  enum pl_log_level { ____Placeholder_pl_log_level } pl_log_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_log*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * pl_log_to_msg_lev ; 

__attribute__((used)) static void FUNC1(void *priv, enum pl_log_level level, const char *msg)
{
    struct mp_log *log = priv;
    FUNC0(log, pl_log_to_msg_lev[level], "%s\n", msg);
}