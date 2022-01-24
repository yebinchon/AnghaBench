#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {char* cur; } ;
typedef  TYPE_1__ SB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int*) ; 
 int FUNC4 (char const*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

void FUNC7(SB *out, const char *str)
{
	const char *s = str;
	char *b;
	
	FUNC0(FUNC4(str));
	
	/*
	 * 14 bytes is enough space to write up to two
	 * \uXXXX escapes and two quotation marks.
	 */
	FUNC1(out, 14);
	b = out->cur;
	
	*b++ = '"';
	while (*s != 0) {
		char c = *s++;
		
		/* Encode the next character, and write it to b. */
		switch (c) {
			case '"':
				*b++ = '\\';
				*b++ = '"';
				break;
			case '\\':
				*b++ = '\\';
				*b++ = '\\';
				break;
			case '\b':
				*b++ = '\\';
				*b++ = 'b';
				break;
			case '\f':
				*b++ = '\\';
				*b++ = 'f';
				break;
			case '\n':
				*b++ = '\\';
				*b++ = 'n';
				break;
			case '\r':
				*b++ = '\\';
				*b++ = 'r';
				break;
			case '\t':
				*b++ = '\\';
				*b++ = 't';
				break;
			default: {
				size_t len;
				
				s--;
				len = FUNC5(s);
				
				if (len == 0) {
					/*
					 * Handle invalid UTF-8 character gracefully in production
					 * by writing a replacement character (U+FFFD)
					 * and skipping a single byte.
					 *
					 * This should never happen when assertions are enabled
					 * due to the assertion at the beginning of this function.
					 */
					FUNC0(false);
					*b++ = (char)0xEF;
					*b++ = (char)0xBF;
					*b++ = (char)0xBD;
					s++;
				} else if (c < 0x1F) {
					/* Encode using \u.... */
					uint32_t unicode;
					
					s += FUNC3(s, &unicode);
					
					if (unicode <= 0xFFFF) {
						*b++ = '\\';
						*b++ = 'u';
						b += FUNC6(b, (uint16_t)unicode);
					} else {
						/* Produce a surrogate pair. */
						uint16_t uc, lc;
						FUNC0(unicode <= 0x10FFFF);
						FUNC2(unicode, &uc, &lc);
						*b++ = '\\';
						*b++ = 'u';
						b += FUNC6(b, uc);
						*b++ = '\\';
						*b++ = 'u';
						b += FUNC6(b, lc);
					}
				} else {
					/* Write the character directly. */
					while (len--)
						*b++ = *s++;
				}
				
				break;
			}
		}
	
		/*
		 * Update *out to know about the new bytes,
		 * and set up b to write another encoded character.
		 */
		out->cur = b;
		FUNC1(out, 14);
		b = out->cur;
	}
	*b++ = '"';
	
	out->cur = b;
}