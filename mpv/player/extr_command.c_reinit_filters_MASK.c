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
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;
typedef  int /*<<< orphan*/  MPContext ;

/* Variables and functions */
#define  STREAM_AUDIO 129 
#define  STREAM_VIDEO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(MPContext *mpctx, enum stream_type mediatype)
{
    switch (mediatype) {
    case STREAM_VIDEO:
        return FUNC1(mpctx) >= 0;
    case STREAM_AUDIO:
        return FUNC0(mpctx) >= 0;
    }
    return false;
}