#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  v; int /*<<< orphan*/  s; int /*<<< orphan*/  h; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; TYPE_1__ hsv; int /*<<< orphan*/  mode; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__ rgb_matrix_config ; 

void FUNC1(void) {
    FUNC0("rgb_matrix_config eprom\n");
    FUNC0("rgb_matrix_config.enable = %d\n", rgb_matrix_config.enable);
    FUNC0("rgb_matrix_config.mode = %d\n", rgb_matrix_config.mode);
    FUNC0("rgb_matrix_config.hsv.h = %d\n", rgb_matrix_config.hsv.h);
    FUNC0("rgb_matrix_config.hsv.s = %d\n", rgb_matrix_config.hsv.s);
    FUNC0("rgb_matrix_config.hsv.v = %d\n", rgb_matrix_config.hsv.v);
    FUNC0("rgb_matrix_config.speed = %d\n", rgb_matrix_config.speed);
}