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
struct d3dx_regstore {int /*<<< orphan*/  const** tables; } ;
struct TYPE_2__ {unsigned int component_size; } ;
typedef  int /*<<< orphan*/  const BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 TYPE_1__* table_info ; 

__attribute__((used)) static void FUNC2(struct d3dx_regstore *rs, unsigned int table, const void *data,
        unsigned int start_offset, unsigned int count)
{
    BYTE *dst = rs->tables[table];
    const BYTE *src = data;
    unsigned int size;

    dst += start_offset * table_info[table].component_size;
    size = count * table_info[table].component_size;
    FUNC0((src < dst && size <= dst - src) || (src > dst && size <= src - dst));
    FUNC1(dst, src, size);
}