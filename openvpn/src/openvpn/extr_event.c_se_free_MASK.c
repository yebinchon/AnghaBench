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
struct se_set {struct se_set* args; } ;
struct event_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct se_set*) ; 

__attribute__((used)) static void
FUNC1(struct event_set *es)
{
    struct se_set *ses = (struct se_set *) es;
    FUNC0(ses->args);
    FUNC0(ses);
}