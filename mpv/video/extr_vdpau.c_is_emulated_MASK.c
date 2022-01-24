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
struct mp_vdpau_ctx {int dummy; } ;
struct AVBufferRef {int dummy; } ;

/* Variables and functions */
 struct mp_vdpau_ctx* FUNC0 (struct AVBufferRef*) ; 
 int FUNC1 (struct mp_vdpau_ctx*) ; 

__attribute__((used)) static bool FUNC2(struct AVBufferRef *hw_device_ctx)
{
    struct mp_vdpau_ctx *ctx = FUNC0(hw_device_ctx);
    if (!ctx)
        return false;

    return FUNC1(ctx);
}