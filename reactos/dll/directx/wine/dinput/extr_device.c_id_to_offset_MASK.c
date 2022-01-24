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
struct TYPE_3__ {int* offsets; int /*<<< orphan*/  wine_df; } ;
typedef  TYPE_1__ DataFormat ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(const DataFormat *df, int id)
{
    int obj = FUNC0(df->wine_df, id);

    return obj >= 0 && df->offsets ? df->offsets[obj] : -1;
}