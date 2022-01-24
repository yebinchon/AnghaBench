#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cv; int /*<<< orphan*/  q; } ;
struct TYPE_7__ {void* data; } ;
typedef  TYPE_1__ QueueEntry ;
typedef  TYPE_2__ Queue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(Queue *q, void *data) {
  QueueEntry *entry = FUNC2(1, sizeof(QueueEntry));
  FUNC1(entry);
  entry->data = data;

  FUNC4(&q->lock);
  FUNC0(&q->q, entry, entries);
  FUNC3(&q->cv);
  FUNC5(&q->lock);
}