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
typedef  int uint16_t ;
struct TYPE_4__ {char* cur; } ;
typedef  TYPE_1__ SB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int*) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8(SB *out, const char *str)
{
	bool escape_unicode = false;
	const char *s = str;
	char *b;
	
	FUNC0(FUNC5(str));
	
	/*
	 * 14 bytes is enough space to write up to two
	 * \uXXXX escapes and two quotation marks.
	 */
	FUNC1(out, 14);
	b = out->cur;
	
	*b++ = '"';
	while (*s != 0) {
		unsigned char c = *s++;
		
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
				int len;
				
				s--;
				len = FUNC6(s);
				
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
					if (escape_unicode) {
						FUNC2(b, "\\uFFFD");
						b += 6;
					} else {
						*b++ = 0xEF;
						*b++ = 0xBF;
						*b++ = 0xBD;
					}
					s++;
				} else if (c < 0x1F || (c >= 0x80 && escape_unicode)) {
					/* Encode using \u.... */
					uint32_t unicode;
					
					s += FUNC4(s, &unicode);
					
					if (unicode <= 0xFFFF) {
						*b++ = '\\';
						*b++ = 'u';
						b += FUNC7(b, unicode);
					} else {
						/* Produce a surrogate pair. */
						uint16_t uc, lc;
						FUNC0(unicode <= 0x10FFFF);
						FUNC3(unicode, &uc, &lc);
						*b++ = '\\';
						*b++ = 'u';
						b += FUNC7(b, uc);
						*b++ = '\\';
						*b++ = 'u';
						b += FUNC7(b, lc);
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