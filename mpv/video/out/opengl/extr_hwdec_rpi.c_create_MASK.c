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
struct ra_hwdec {int /*<<< orphan*/  log; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  renderer; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER ; 
 int /*<<< orphan*/  FUNC0 (struct ra_hwdec*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct ra_hwdec *hw)
{
    struct priv *p = hw->priv;
    p->log = hw->log;

    FUNC1();

    if (FUNC4()) {
        FUNC0(hw, "Could not initialize MMAL.\n");
        return -1;
    }

    if (FUNC2(MMAL_COMPONENT_DEFAULT_VIDEO_RENDERER, &p->renderer))
    {
        FUNC0(hw, "Could not create MMAL renderer.\n");
        FUNC3();
        return -1;
    }

    return 0;
}