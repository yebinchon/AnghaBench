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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  RBuffer ;
typedef  int /*<<< orphan*/  RBinArchOptions ;
typedef  int /*<<< orphan*/  RBin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(const char *format, const char *arch, int bits, const ut8 *code, int codelen) {
	RBin *bin = FUNC4 ();
	RBinArchOptions opts;
	RBuffer *b;
	FUNC1 (&opts, arch, bits);
	b = FUNC2 (bin, format, code, codelen, NULL, 0, &opts);
	if (b) {
		ut64 blen;
		const ut8 *tmp = FUNC5 (b, &blen);
		if (FUNC7 (1, tmp, blen) != blen) {
			FUNC0 ("Failed to write buffer\n");
		}
		FUNC6 (b);
	} else {
		FUNC0 ("Cannot create binary for this format '%s'.\n", format);
	}
	FUNC3 (bin);
	return 0;
}