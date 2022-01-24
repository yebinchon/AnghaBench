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
struct pixel_format_desc {scalar_t__ format; } ;

/* Variables and functions */
 int FUNC0 (struct pixel_format_desc const*) ; 
 scalar_t__ D3DFMT_UNKNOWN ; 
 struct pixel_format_desc const* formats ; 

const struct pixel_format_desc *FUNC1(int idx)
{
    if(idx >= FUNC0(formats))
        return NULL;
    if(formats[idx].format == D3DFMT_UNKNOWN)
        return NULL;
    return &formats[idx];
}