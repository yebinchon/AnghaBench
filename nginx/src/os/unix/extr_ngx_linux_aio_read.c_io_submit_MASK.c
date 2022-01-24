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
struct iocb {int dummy; } ;
typedef  int /*<<< orphan*/  aio_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_io_submit ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,struct iocb**) ; 

__attribute__((used)) static int
FUNC1(aio_context_t ctx, long n, struct iocb **paiocb)
{
    return FUNC0(SYS_io_submit, ctx, n, paiocb);
}