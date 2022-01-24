#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_header_t ;
struct TYPE_3__ {scalar_t__ post_data; int /*<<< orphan*/  headers; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ task_doc_navigate_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(task_header_t *t)
{
    task_doc_navigate_t *task = (task_doc_navigate_t*)t;

    FUNC1(task->url);
    FUNC1(task->headers);
    if(task->post_data)
        FUNC0(task->post_data);
    FUNC2(task);
}