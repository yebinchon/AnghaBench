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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  RCrypto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC10 (char*,int*) ; 
 scalar_t__ FUNC11 (int*) ; 
 TYPE_1__ s ; 
 scalar_t__ FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(const char *algo, int direction, char *filename, const ut8 *iv, int ivlen, int mode) {
	bool no_key_mode = !FUNC12 ("base64", algo) || !FUNC12 ("base91", algo) || !FUNC12 ("punycode", algo); // TODO: generalise this for all non key encoding/decoding.
	if (no_key_mode || s.len > 0) {
		RCrypto *cry = FUNC5 ();
		if (FUNC9 (cry, algo)) {
			if (FUNC7 (cry, s.buf, s.len, 0, direction)) {
				int file_size;
				ut8 *buf = FUNC12 (filename, "-")
				           ? (ut8 *) FUNC10 (filename, &file_size)
					   : (ut8 *) FUNC11 (&file_size);
				if (!buf) {
					FUNC0 ("rahash2: Cannot open '%s'\n", filename);
					return -1;
				}

				if (iv && !FUNC6 (cry, iv, ivlen)) {
					FUNC0 ("Invalid IV.\n");
					FUNC1 (buf);
					return 0;
				}

				FUNC8 (cry, buf, file_size);
				FUNC2 (cry, NULL, 0);

				int result_size = 0;
				ut8 *result = FUNC4 (cry, &result_size);
				if (result) {
					FUNC13 (1, result, result_size);
					FUNC1 (result);
				}
				FUNC1 (buf);
			} else {
				FUNC0 ("Invalid key\n");
			}
			return 0;
		} else {
			FUNC0 ("Unknown %s algorithm '%s'\n", ((!direction)? "encryption": "decryption"), algo);
		}
		FUNC3 (cry);
	} else {
		FUNC0 ("%s key not defined. Use -S [key]\n", ((!direction)? "Encryption": "Decryption"));
	}
	return 1;
}