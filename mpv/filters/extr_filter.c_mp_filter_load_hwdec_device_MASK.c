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
struct mp_stream_info {int /*<<< orphan*/  hwdec_devs; } ;
struct mp_filter {int dummy; } ;
struct AVBufferRef {int dummy; } ;

/* Variables and functions */
 struct AVBufferRef* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mp_stream_info* FUNC2 (struct mp_filter*) ; 

struct AVBufferRef *FUNC3(struct mp_filter *f, int avtype)
{
    struct mp_stream_info *info = FUNC2(f);
    if (!info || !info->hwdec_devs)
        return NULL;

    FUNC1(info->hwdec_devs);

    return FUNC0(info->hwdec_devs, avtype);
}