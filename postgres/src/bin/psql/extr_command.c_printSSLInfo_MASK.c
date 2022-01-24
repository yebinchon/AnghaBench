#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,char const*,char*) ; 
 TYPE_1__ pset ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	const char *protocol;
	const char *cipher;
	const char *bits;
	const char *compression;

	if (!FUNC1(pset.db))
		return;					/* no SSL */

	protocol = FUNC0(pset.db, "protocol");
	cipher = FUNC0(pset.db, "cipher");
	bits = FUNC0(pset.db, "key_bits");
	compression = FUNC0(pset.db, "compression");

	FUNC3(FUNC2("SSL connection (protocol: %s, cipher: %s, bits: %s, compression: %s)\n"),
		   protocol ? protocol : FUNC2("unknown"),
		   cipher ? cipher : FUNC2("unknown"),
		   bits ? bits : FUNC2("unknown"),
		   (compression && FUNC4(compression, "off") != 0) ? FUNC2("on") : FUNC2("off"));
}