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
struct per_core_single_number_file {int /*<<< orphan*/  value; scalar_t__ rd; int /*<<< orphan*/  found; } ;
struct cpu_chart {int /*<<< orphan*/  id; struct per_core_single_number_file* files; } ;
typedef  int /*<<< orphan*/  collected_number ;
typedef  int /*<<< orphan*/  RRD_ALGORITHM ;
typedef  int /*<<< orphan*/  RRDSET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct cpu_chart *all_cpu_charts, size_t len, size_t index, RRDSET *st, collected_number multiplier, collected_number divisor, RRD_ALGORITHM algorithm) {
    size_t x;
    for(x = 0; x < len ; x++) {
        struct per_core_single_number_file *f = &all_cpu_charts[x].files[index];

        if(FUNC2(!f->found))
            continue;

        if(FUNC2(!f->rd))
            f->rd = FUNC0(st, all_cpu_charts[x].id, NULL, multiplier, divisor, algorithm);

        FUNC1(st, f->rd, f->value);
    }
}