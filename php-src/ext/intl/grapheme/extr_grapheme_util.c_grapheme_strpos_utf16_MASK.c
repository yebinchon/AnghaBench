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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  UStringSearch ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UCollator ;
typedef  int /*<<< orphan*/  UChar ;
typedef  int /*<<< orphan*/  UBreakIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  UCOL_SECONDARY ; 
 int /*<<< orphan*/  UCOL_STRENGTH ; 
 int USEARCH_DONE ; 
 int U_BRK_SAFECLONE_BUFFERSIZE ; 
 int /*<<< orphan*/  U_ILLEGAL_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  U_ZERO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int*,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int32_t FUNC17(char *haystack, size_t haystack_len, char *needle, size_t needle_len, int32_t offset, int32_t *puchar_pos, int f_ignore_case, int last)
{
	UChar *uhaystack = NULL, *uneedle = NULL;
	int32_t uhaystack_len = 0, uneedle_len = 0, char_pos, ret_pos, offset_pos = 0;
	unsigned char u_break_iterator_buffer[U_BRK_SAFECLONE_BUFFERSIZE];
	UBreakIterator* bi = NULL;
	UErrorCode status;
	UStringSearch* src = NULL;

	if(puchar_pos) {
		*puchar_pos = -1;
	}
	/* convert the strings to UTF-16. */

	status = U_ZERO_ERROR;
	FUNC5(&uhaystack, &uhaystack_len, haystack, haystack_len, &status );
	FUNC0(status, "Error converting input string to UTF-16");

	status = U_ZERO_ERROR;
	FUNC5(&uneedle, &uneedle_len, needle, needle_len, &status );
	FUNC0(status, "Error converting needle string to UTF-16");

	/* get a pointer to the haystack taking into account the offset */
	status = U_ZERO_ERROR;
	bi = FUNC3(u_break_iterator_buffer, &status );
	FUNC0(status, "Failed to get iterator");
	status = U_ZERO_ERROR;
	FUNC8(bi, uhaystack, uhaystack_len, &status);
	FUNC0(status, "Failed to set up iterator");

	status = U_ZERO_ERROR;
	src = FUNC14(uneedle, uneedle_len, uhaystack, uhaystack_len, "", bi, &status);
	FUNC0(status, "Error creating search object");

	if(f_ignore_case) {
		UCollator *coll = FUNC11(src);
		status = U_ZERO_ERROR;
		FUNC9(coll, UCOL_STRENGTH, UCOL_SECONDARY, &status);
		FUNC0(status, "Error setting collation strength");
		FUNC15(src);
	}

	if(offset != 0) {
		offset_pos = FUNC4(bi, offset);
		if(offset_pos == -1) {
			status = U_ILLEGAL_ARGUMENT_ERROR;
			FUNC0(status, "Invalid search offset");
		}
		status = U_ZERO_ERROR;
		FUNC16(src, offset_pos, &status);
		FUNC0(status, "Invalid search offset");
	}


	if(last) {
		char_pos = FUNC12(src, &status);
		if(char_pos < offset_pos) {
			/* last one is beyound our start offset */
			char_pos = USEARCH_DONE;
		}
	} else {
		char_pos = FUNC13(src, &status);
	}
	FUNC0(status, "Error looking up string");
	if(char_pos != USEARCH_DONE && FUNC7(bi, char_pos)) {
		ret_pos = FUNC2(bi, uhaystack,char_pos);
		if(puchar_pos) {
			*puchar_pos = char_pos;
		}
	} else {
		ret_pos = -1;
	}

	if (uhaystack) {
		FUNC1( uhaystack );
	}
	if (uneedle) {
		FUNC1( uneedle );
	}
	FUNC6 (bi);
	FUNC10 (src);

	return ret_pos;
}