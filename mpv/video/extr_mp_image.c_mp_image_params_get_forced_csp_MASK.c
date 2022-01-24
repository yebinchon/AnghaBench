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
struct mp_image_params {int hw_subfmt; int imgfmt; } ;
typedef  enum mp_csp { ____Placeholder_mp_csp } mp_csp ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static enum mp_csp FUNC1(struct mp_image_params *params)
{
    int imgfmt = params->hw_subfmt ? params->hw_subfmt : params->imgfmt;
    return FUNC0(imgfmt);
}