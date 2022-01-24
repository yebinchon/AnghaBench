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
struct mg_q_msg {int dummy; } ;
typedef  scalar_t__ mg_init_cb ;

/* Variables and functions */
 scalar_t__ OSI_OK ; 
 int /*<<< orphan*/  mg_task ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_mg_q ; 

bool FUNC2(int priority, int stack_size, mg_init_cb mg_init) {
  if (FUNC0(&s_mg_q, "MG", sizeof(struct mg_q_msg), 16) != OSI_OK) {
    return false;
  }
  if (FUNC1(mg_task, (const signed char *) "MG", stack_size,
                     (void *) mg_init, priority, NULL) != OSI_OK) {
    return false;
  }
  return true;
}