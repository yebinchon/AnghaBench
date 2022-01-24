#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fromdata; int /*<<< orphan*/  todata; int /*<<< orphan*/  wrappeddata; } ;
typedef  TYPE_1__ _align_wrap_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(NpyAuxData *data)
{
    _align_wrap_data *d = (_align_wrap_data *)data;
    FUNC0(d->wrappeddata);
    FUNC0(d->todata);
    FUNC0(d->fromdata);
    FUNC1(data);
}