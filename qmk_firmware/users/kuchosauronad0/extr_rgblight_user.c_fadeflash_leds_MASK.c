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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  base_hue ; 
 int /*<<< orphan*/  base_sat ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(uint8_t hue, uint8_t sat, uint8_t val){
  // indicate success / fail of a leader sequence
  // fade out, set new hue and saturation, fade in, fade out, set old color, fade in
  // this is used in leader.c
  // TODO: come up with a better name maybe
  FUNC0(false); 
  FUNC1(hue, sat, 0); 
  FUNC0(true); 
  FUNC0(false); 
  FUNC1(base_hue, base_sat, 0); 
  FUNC0(true); 
}