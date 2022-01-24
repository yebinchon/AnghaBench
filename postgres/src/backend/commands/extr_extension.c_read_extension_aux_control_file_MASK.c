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
typedef  int /*<<< orphan*/  ExtensionControlFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static ExtensionControlFile *
FUNC3(const ExtensionControlFile *pcontrol,
								const char *version)
{
	ExtensionControlFile *acontrol;

	/*
	 * Flat-copy the struct.  Pointer fields share values with original.
	 */
	acontrol = (ExtensionControlFile *) FUNC1(sizeof(ExtensionControlFile));
	FUNC0(acontrol, pcontrol, sizeof(ExtensionControlFile));

	/*
	 * Parse the auxiliary control file, overwriting struct fields
	 */
	FUNC2(acontrol, version);

	return acontrol;
}