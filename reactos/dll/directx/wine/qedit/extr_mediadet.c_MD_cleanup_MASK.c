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
struct TYPE_3__ {int num_streams; scalar_t__ cur_stream; int /*<<< orphan*/ * graph; int /*<<< orphan*/ * splitter; int /*<<< orphan*/ * source; int /*<<< orphan*/ * cur_pin; } ;
typedef  TYPE_1__ MediaDetImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(MediaDetImpl *This)
{
    if (This->cur_pin) FUNC2(This->cur_pin);
    This->cur_pin = NULL;
    if (This->source) FUNC0(This->source);
    This->source = NULL;
    if (This->splitter) FUNC0(This->splitter);
    This->splitter = NULL;
    if (This->graph) FUNC1(This->graph);
    This->graph = NULL;
    This->num_streams = -1;
    This->cur_stream = 0;
}