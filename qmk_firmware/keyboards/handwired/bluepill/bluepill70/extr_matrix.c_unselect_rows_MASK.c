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

/* Variables and functions */
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  PAL_MODE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void){
  FUNC0(GPIOB, 9, PAL_MODE_INPUT);
  FUNC0(GPIOB, 8, PAL_MODE_INPUT);
  FUNC0(GPIOB, 7, PAL_MODE_INPUT);
  FUNC0(GPIOB, 6, PAL_MODE_INPUT);
  FUNC0(GPIOB, 5, PAL_MODE_INPUT);
  FUNC0(GPIOA, 4, PAL_MODE_INPUT);
}