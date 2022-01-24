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
struct ra_buf {int /*<<< orphan*/  priv; } ;
struct ra {int dummy; } ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static void FUNC2(struct ra *ra, struct ra_buf *buf, ptrdiff_t offset,
                          const void *data, size_t size)
{
    FUNC1(FUNC0(ra), buf->priv, offset, data, size);
}