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
typedef  int matrix_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 scalar_t__ PAL_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static matrix_row_t FUNC1(void){
  return ((FUNC0(GPIOA, 5)==PAL_HIGH) ? 0 : (1<<0))
    | ((FUNC0(GPIOA, 15)==PAL_HIGH) ? 0 : (1<<1))
    | ((FUNC0(GPIOA, 10)==PAL_HIGH) ? 0 : (1<<2))
    | ((FUNC0(GPIOA, 9)==PAL_HIGH) ? 0 : (1<<3))
    | ((FUNC0(GPIOA, 8)==PAL_HIGH) ? 0 : (1<<4))
    | ((FUNC0(GPIOB, 15)==PAL_HIGH) ? 0 : (1<<5))
    | ((FUNC0(GPIOB, 14)==PAL_HIGH) ? 0 : (1<<6))
    | ((FUNC0(GPIOB, 13)==PAL_HIGH) ? 0 : (1<<7))
    | ((FUNC0(GPIOB, 12)==PAL_HIGH) ? 0 : (1<<8))
    | ((FUNC0(GPIOB, 11)==PAL_HIGH) ? 0 : (1<<9))
    | ((FUNC0(GPIOB, 10)==PAL_HIGH) ? 0 : (1<<10))
    | ((FUNC0(GPIOB, 1)==PAL_HIGH) ? 0 : (1<<11))
    | ((FUNC0(GPIOB, 0)==PAL_HIGH) ? 0 : (1<<12))
    | ((FUNC0(GPIOA, 7)==PAL_HIGH) ? 0 : (1<<13))
    | ((FUNC0(GPIOA, 6)==PAL_HIGH) ? 0 : (1<<14));
}