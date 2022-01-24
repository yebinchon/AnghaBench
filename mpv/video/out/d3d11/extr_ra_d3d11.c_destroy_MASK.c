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
struct ra_d3d11 {scalar_t__ iqueue; scalar_t__ debug; scalar_t__ ctx; scalar_t__ dev; scalar_t__ dev1; scalar_t__ ctx1; scalar_t__ vbuf; scalar_t__ blit_sampler; scalar_t__ blit_vbuf; scalar_t__ blit_layout; scalar_t__ blit_vs; scalar_t__ blit_float_ps; scalar_t__ clear_cbuf; scalar_t__ clear_vbuf; scalar_t__ clear_layout; scalar_t__ clear_vs; scalar_t__ clear_ps; } ;
struct ra {struct ra_d3d11* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  D3D11_RLDO_DETAIL ; 
 int /*<<< orphan*/  D3D11_RLDO_SUMMARY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ra*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ra*) ; 

__attribute__((used)) static void FUNC6(struct ra *ra)
{
    struct ra_d3d11 *p = ra->priv;

    // Release everything except the interfaces needed to perform leak checking
    FUNC3(p->clear_ps);
    FUNC3(p->clear_vs);
    FUNC3(p->clear_layout);
    FUNC3(p->clear_vbuf);
    FUNC3(p->clear_cbuf);
    FUNC3(p->blit_float_ps);
    FUNC3(p->blit_vs);
    FUNC3(p->blit_layout);
    FUNC3(p->blit_vbuf);
    FUNC3(p->blit_sampler);
    FUNC3(p->vbuf);
    FUNC3(p->ctx1);
    FUNC3(p->dev1);
    FUNC3(p->dev);

    if (p->debug && p->ctx) {
        // Destroy the device context synchronously so referenced objects don't
        // show up in the leak check
        FUNC1(p->ctx);
        FUNC2(p->ctx);
    }
    FUNC3(p->ctx);

    if (p->debug) {
        // Report any leaked objects
        FUNC4(ra, "after destroy");
        FUNC0(p->debug, D3D11_RLDO_DETAIL);
        FUNC4(ra, "after leak check");
        FUNC0(p->debug, D3D11_RLDO_SUMMARY);
        FUNC4(ra, "after leak summary");
    }
    FUNC3(p->debug);
    FUNC3(p->iqueue);

    FUNC5(ra);
}