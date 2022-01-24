#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {void* pvElements; } ;
typedef  TYPE_1__ FIFO_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* socketfifo ; 
 int /*<<< orphan*/  socketfifo_Pop ; 
 int /*<<< orphan*/  socketfifo_Push ; 

void FUNC1 (FIFO_t *fifo, void *elements, uint32_t maxcount) {
    // Initialize global data
    socketfifo = fifo;
    socketfifo->pvElements = elements;
    FUNC0 (socketfifo, maxcount, socketfifo_Push, socketfifo_Pop);
}