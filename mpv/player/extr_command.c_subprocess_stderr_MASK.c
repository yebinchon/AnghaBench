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
struct subprocess_cb_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subprocess_cb_ctx*,int,char*,size_t) ; 

__attribute__((used)) static void FUNC1(void *p, char *data, size_t size)
{
    struct subprocess_cb_ctx *ctx = p;
    FUNC0(ctx, 2, data, size);
}