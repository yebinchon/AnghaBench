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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(ut8 const firstbyte, char const* arg
	, ut16 const pc, ut8 **out)
{
	ut16 address;
	if (!FUNC1 (arg, &address)
		|| !FUNC0 (pc, address, (*out)+1)) {
		return false;
	}
	(*out)[0] = firstbyte;
	*out += 2;
	return true;
}