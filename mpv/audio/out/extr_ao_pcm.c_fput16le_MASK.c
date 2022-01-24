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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(uint16_t val, FILE *fp)
{
    uint8_t bytes[2] = {val, val >> 8};
    FUNC0(bytes, 1, 2, fp);
}