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
typedef  int mp_word ;

/* Variables and functions */
 int MP_DIGIT_BIT ; 

__attribute__((used)) static inline mp_word
FUNC0(mp_word W)
{
	return (W >> MP_DIGIT_BIT);
}