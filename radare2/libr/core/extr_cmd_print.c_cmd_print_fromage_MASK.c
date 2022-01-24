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
typedef  int /*<<< orphan*/  RX509Certificate ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  int /*<<< orphan*/  RCore ;
typedef  int /*<<< orphan*/  RCMS ;
typedef  int /*<<< orphan*/  RASN1Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  help_msg_pF ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC11 (int /*<<< orphan*/  const*,int,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(RCore *core, const char *input, const ut8* data, int size) {
	switch (*input) {
	case 'a':
		{
			FUNC0 (input[1] != 'q');
			RASN1Object *asn1 = FUNC3 (data, size, data);
			if (asn1) {
				char *res = FUNC5 (asn1, 0, NULL);
				FUNC4 (asn1);
				if (res) {
					FUNC6 ("%s\n", res);
					FUNC2 (res);
				}
			} else {
				FUNC1 ("Malformed object: did you supply enough data?\ntry to change the block size (see b?)\n");
			}
		}
		break;
	case 'x': // "pFx" x509
		{
			RX509Certificate* x509 = FUNC16 (FUNC3 (data, size, data));
			if (x509) {
				RStrBuf *sb = FUNC13 ("");
				FUNC14 (x509, NULL, sb);
				char *res = FUNC12 (sb);
				if (res) {
					FUNC6 ("%s\n", res);
					FUNC2 (res);
				}
				FUNC15 (x509);
			} else {
				FUNC1 ("Malformed object: did you supply enough data?\ntry to change the block size (see b?)\n");
			}
		}
		break;
	case 'p': // "pFp"
		{
			RCMS *cms = FUNC10 (data, size);
			if (cms) {
				char *res = FUNC8 (cms);
				if (res) {
					FUNC6 ("%s\n", res);
					FUNC2 (res);
				}
				FUNC9 (cms);
			} else {
				FUNC1 ("Malformed object: did you supply enough data?\ntry to change the block size (see b?)\n");
			}
		}
		break;
	case 'b': // "pFb"
		{
			char *s = FUNC11(data, size, input[1] == 'v');
			if (s) {
				FUNC6 ("%s", s);
				FUNC2 (s);
			}
		}
		break;
	default:
	case '?': // "pF?"
		FUNC7 (core, help_msg_pF);
		break;
	}
}