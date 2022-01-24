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
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  int /*<<< orphan*/  PHKEY ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

LONG FUNC1( HANDLE RegHandle,
		       PWCHAR ChildKeyName,
		       PHKEY ReturnHandle ) {
  return FUNC0( RegHandle,
			ChildKeyName,
			0,
			KEY_READ,
			ReturnHandle );
}