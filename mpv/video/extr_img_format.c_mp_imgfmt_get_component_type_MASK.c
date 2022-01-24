#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum mp_component_type { ____Placeholder_mp_component_type } mp_component_type ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_FLOAT ; 
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 int IMGFMT_RGB30 ; 
 int MP_COMPONENT_TYPE_FLOAT ; 
 int MP_COMPONENT_TYPE_UINT ; 
 int MP_COMPONENT_TYPE_UNKNOWN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

enum mp_component_type FUNC2(int imgfmt)
{
    if (imgfmt == IMGFMT_RGB30)
        return MP_COMPONENT_TYPE_UINT;

    const AVPixFmtDescriptor *pixdesc =
        FUNC0(FUNC1(imgfmt));

    if (!pixdesc || (pixdesc->flags & AV_PIX_FMT_FLAG_HWACCEL))
        return MP_COMPONENT_TYPE_UNKNOWN;

#if LIBAVUTIL_VERSION_MICRO >= 100
    if (pixdesc->flags & AV_PIX_FMT_FLAG_FLOAT)
        return MP_COMPONENT_TYPE_FLOAT;
#endif

    return MP_COMPONENT_TYPE_UINT;
}