#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  parser_ctx_t ;
struct TYPE_5__ {TYPE_4__* tail; } ;
typedef  TYPE_1__ parameter_list_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {struct TYPE_6__* next; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static parameter_list_t *FUNC1(parser_ctx_t *ctx, parameter_list_t *list, const WCHAR *identifier)
{
    list->tail = list->tail->next = FUNC0(ctx, identifier);

    return list;
}