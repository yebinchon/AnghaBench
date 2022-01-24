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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 void* FUNC0 (void*,scalar_t__) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_cacheline_size ; 
 int /*<<< orphan*/  ngx_crc32_table16 ; 
 void* ngx_crc32_table_short ; 
 TYPE_1__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

ngx_int_t
FUNC3(void)
{
    void  *p;

    if (((uintptr_t) ngx_crc32_table_short
          & ~((uintptr_t) ngx_cacheline_size - 1))
        == (uintptr_t) ngx_crc32_table_short)
    {
        return NGX_OK;
    }

    p = FUNC1(16 * sizeof(uint32_t) + ngx_cacheline_size, ngx_cycle->log);
    if (p == NULL) {
        return NGX_ERROR;
    }

    p = FUNC0(p, ngx_cacheline_size);

    FUNC2(p, ngx_crc32_table16, 16 * sizeof(uint32_t));

    ngx_crc32_table_short = p;

    return NGX_OK;
}