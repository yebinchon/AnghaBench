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
 int /*<<< orphan*/  ALL_INPUT ; 
 int /*<<< orphan*/  IC1 ; 
 int /*<<< orphan*/  IC2 ; 
 int /*<<< orphan*/  PCA9555_PORT0 ; 
 int /*<<< orphan*/  PCA9555_PORT1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void) {
  // init all cols high - IC2 all input
  FUNC0(IC2, PCA9555_PORT0, ALL_INPUT);//same as initial state
  FUNC0(IC2, PCA9555_PORT1, ALL_INPUT);//same as initial state
  FUNC0(IC1, PCA9555_PORT1, ALL_INPUT);//same as initial state

  // init all rows - IC1 port0 input
  FUNC0(IC1, PCA9555_PORT0, ALL_INPUT);//same as initial state
}