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
struct TYPE_2__ {int /*<<< orphan*/  decsrcref_transferdata; int /*<<< orphan*/  transferdata; } ;
typedef  TYPE_1__ _masked_wrapper_transfer_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(NpyAuxData *data)
{
    _masked_wrapper_transfer_data *d = (_masked_wrapper_transfer_data *)data;
    FUNC0(d->transferdata);
    FUNC0(d->decsrcref_transferdata);
    FUNC1(data);
}