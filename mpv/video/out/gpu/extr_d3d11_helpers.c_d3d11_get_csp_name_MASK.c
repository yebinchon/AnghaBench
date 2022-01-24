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
typedef  int DXGI_COLOR_SPACE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  CUSTOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DXGI_COLOR_SPACE_ ; 
 int /*<<< orphan*/  RESERVED ; 
 int /*<<< orphan*/  RGB_FULL_G10_NONE_P709 ; 
 int /*<<< orphan*/  RGB_FULL_G2084_NONE_P2020 ; 
 int /*<<< orphan*/  RGB_FULL_G22_NONE_P2020 ; 
 int /*<<< orphan*/  RGB_FULL_G22_NONE_P709 ; 
 int /*<<< orphan*/  RGB_STUDIO_G2084_NONE_P2020 ; 
 int /*<<< orphan*/  RGB_STUDIO_G22_NONE_P2020 ; 
 int /*<<< orphan*/  RGB_STUDIO_G22_NONE_P709 ; 
 int /*<<< orphan*/  RGB_STUDIO_G24_NONE_P2020 ; 
 int /*<<< orphan*/  RGB_STUDIO_G24_NONE_P709 ; 
 int /*<<< orphan*/  YCBCR_FULL_G22_LEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_FULL_G22_LEFT_P601 ; 
 int /*<<< orphan*/  YCBCR_FULL_G22_LEFT_P709 ; 
 int /*<<< orphan*/  YCBCR_FULL_G22_NONE_P709_X601 ; 
 int /*<<< orphan*/  YCBCR_FULL_GHLG_TOPLEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G2084_LEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G2084_TOPLEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G22_LEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G22_LEFT_P601 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G22_LEFT_P709 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G22_TOPLEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G24_LEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G24_LEFT_P709 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_G24_TOPLEFT_P2020 ; 
 int /*<<< orphan*/  YCBCR_STUDIO_GHLG_TOPLEFT_P2020 ; 

__attribute__((used)) static const char *FUNC1(DXGI_COLOR_SPACE_TYPE csp)
{
    switch (csp) {
    FUNC0(DXGI_COLOR_SPACE_, RGB_FULL_G22_NONE_P709);
    FUNC0(DXGI_COLOR_SPACE_, RGB_FULL_G10_NONE_P709);
    FUNC0(DXGI_COLOR_SPACE_, RGB_STUDIO_G22_NONE_P709);
    FUNC0(DXGI_COLOR_SPACE_, RGB_STUDIO_G22_NONE_P2020);
    FUNC0(DXGI_COLOR_SPACE_, RESERVED);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_FULL_G22_NONE_P709_X601);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G22_LEFT_P601);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_FULL_G22_LEFT_P601);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G22_LEFT_P709);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_FULL_G22_LEFT_P709);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G22_LEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_FULL_G22_LEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, RGB_FULL_G2084_NONE_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G2084_LEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, RGB_STUDIO_G2084_NONE_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G22_TOPLEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G2084_TOPLEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, RGB_FULL_G22_NONE_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_GHLG_TOPLEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_FULL_GHLG_TOPLEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, RGB_STUDIO_G24_NONE_P709);
    FUNC0(DXGI_COLOR_SPACE_, RGB_STUDIO_G24_NONE_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G24_LEFT_P709);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G24_LEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, YCBCR_STUDIO_G24_TOPLEFT_P2020);
    FUNC0(DXGI_COLOR_SPACE_, CUSTOM);
    default:
        return "<Unknown>";
    }
}