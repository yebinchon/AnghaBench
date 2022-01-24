#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pending_list {size_t num; TYPE_3__* objs; } ;
struct location {int dummy; } ;
typedef  enum DataKind { ____Placeholder_DataKind } DataKind ;
struct TYPE_4__ {int kind; struct location loc; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__ var; } ;
struct TYPE_6__ {TYPE_2__ u; int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  PENDING_VAR ; 
 int /*<<< orphan*/  FUNC0 (struct pending_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static inline void FUNC3(struct pending_list* pending, const char* name,
                                   enum DataKind dt, const struct location* loc)
{
    FUNC0(pending);
    pending->objs[pending->num].tag = PENDING_VAR;
    FUNC1(pending->objs[pending->num].u.var.name,
                sizeof(pending->objs[pending->num].u.var.name), name);
    pending->objs[pending->num].u.var.type  = FUNC2(name);
    pending->objs[pending->num].u.var.kind  = dt;
    pending->objs[pending->num].u.var.loc   = *loc;
    pending->num++;
}