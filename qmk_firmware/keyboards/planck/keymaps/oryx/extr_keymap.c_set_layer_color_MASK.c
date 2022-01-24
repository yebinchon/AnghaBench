#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ v; } ;
struct TYPE_10__ {TYPE_1__ hsv; } ;
struct TYPE_9__ {int /*<<< orphan*/  v; int /*<<< orphan*/  s; int /*<<< orphan*/  h; } ;
struct TYPE_8__ {float r; float g; float b; } ;
typedef  TYPE_2__ RGB ;
typedef  TYPE_3__ HSV ;

/* Variables and functions */
 int DRIVER_LED_TOTAL ; 
 float UINT8_MAX ; 
 TYPE_2__ FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/ *** ledmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__ rgb_matrix_config ; 
 int /*<<< orphan*/  FUNC2 (int,float,float,float) ; 

void FUNC3(int layer) {
  for (int i = 0; i < DRIVER_LED_TOTAL; i++) {
    HSV hsv = {
      .h = FUNC1(&ledmap[layer][i][0]),
      .s = FUNC1(&ledmap[layer][i][1]),
      .v = FUNC1(&ledmap[layer][i][2]),
    };
    if (!hsv.h && !hsv.s && !hsv.v) {
        FUNC2( i, 0, 0, 0 );
    } else {
        RGB rgb = FUNC0( hsv );
        float f = (float)rgb_matrix_config.hsv.v / UINT8_MAX;
        FUNC2( i, f * rgb.r, f * rgb.g, f * rgb.b );
    }
  }
}