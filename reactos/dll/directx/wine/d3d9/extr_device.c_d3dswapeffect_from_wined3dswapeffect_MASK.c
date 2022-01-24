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
typedef  enum wined3d_swap_effect { ____Placeholder_wined3d_swap_effect } wined3d_swap_effect ;
typedef  int /*<<< orphan*/  D3DSWAPEFFECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DSWAPEFFECT_COPY ; 
 int /*<<< orphan*/  D3DSWAPEFFECT_DISCARD ; 
 int /*<<< orphan*/  D3DSWAPEFFECT_FLIP ; 
 int /*<<< orphan*/  D3DSWAPEFFECT_FLIPEX ; 
 int /*<<< orphan*/  D3DSWAPEFFECT_OVERLAY ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  WINED3D_SWAP_EFFECT_COPY 132 
#define  WINED3D_SWAP_EFFECT_DISCARD 131 
#define  WINED3D_SWAP_EFFECT_FLIP_SEQUENTIAL 130 
#define  WINED3D_SWAP_EFFECT_OVERLAY 129 
#define  WINED3D_SWAP_EFFECT_SEQUENTIAL 128 

__attribute__((used)) static D3DSWAPEFFECT FUNC1(enum wined3d_swap_effect effect)
{
    switch (effect)
    {
        case WINED3D_SWAP_EFFECT_DISCARD:
            return D3DSWAPEFFECT_DISCARD;
        case WINED3D_SWAP_EFFECT_SEQUENTIAL:
            return D3DSWAPEFFECT_FLIP;
        case WINED3D_SWAP_EFFECT_COPY:
            return D3DSWAPEFFECT_COPY;
        case WINED3D_SWAP_EFFECT_OVERLAY:
            return D3DSWAPEFFECT_OVERLAY;
        case WINED3D_SWAP_EFFECT_FLIP_SEQUENTIAL:
            return D3DSWAPEFFECT_FLIPEX;
        default:
            FUNC0("Unhandled swap effect %#x.\n", effect);
            return D3DSWAPEFFECT_FLIP;
    }
}