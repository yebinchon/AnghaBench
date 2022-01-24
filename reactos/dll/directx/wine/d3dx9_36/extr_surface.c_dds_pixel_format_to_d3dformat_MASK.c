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
struct dds_pixel_format {int flags; int gmask; int /*<<< orphan*/  amask; int /*<<< orphan*/  bmask; int /*<<< orphan*/  rmask; int /*<<< orphan*/  bpp; int /*<<< orphan*/  fourcc; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  D3DFORMAT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFMT_UNKNOWN ; 
 int DDS_PF_ALPHA_ONLY ; 
 int DDS_PF_BUMPDUDV ; 
 int DDS_PF_BUMPLUMINANCE ; 
 int DDS_PF_FOURCC ; 
 int DDS_PF_LUMINANCE ; 
 int DDS_PF_RGB ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dds_pixel_format const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dds_pixel_format const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dds_pixel_format const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dds_pixel_format const*) ; 
 int /*<<< orphan*/  FUNC7 (struct dds_pixel_format const*) ; 

__attribute__((used)) static D3DFORMAT FUNC8(const struct dds_pixel_format *pixel_format)
{
    FUNC0("pixel_format: size %u, flags %#x, fourcc %#x, bpp %u.\n", pixel_format->size,
            pixel_format->flags, pixel_format->fourcc, pixel_format->bpp);
    FUNC0("rmask %#x, gmask %#x, bmask %#x, amask %#x.\n", pixel_format->rmask, pixel_format->gmask,
            pixel_format->bmask, pixel_format->amask);

    if (pixel_format->flags & DDS_PF_FOURCC)
        return FUNC5(pixel_format->fourcc);
    if (pixel_format->flags & DDS_PF_RGB)
        return FUNC7(pixel_format);
    if (pixel_format->flags & DDS_PF_LUMINANCE)
        return FUNC6(pixel_format);
    if (pixel_format->flags & DDS_PF_ALPHA_ONLY)
        return FUNC2(pixel_format);
    if (pixel_format->flags & DDS_PF_BUMPDUDV)
        return FUNC4(pixel_format);
    if (pixel_format->flags & DDS_PF_BUMPLUMINANCE)
        return FUNC3(pixel_format);

    FUNC1("Unknown pixel format (flags %#x, fourcc %#x, bpp %u, r %#x, g %#x, b %#x, a %#x)\n",
        pixel_format->flags, pixel_format->fourcc, pixel_format->bpp,
        pixel_format->rmask, pixel_format->gmask, pixel_format->bmask, pixel_format->amask);
    return D3DFMT_UNKNOWN;
}