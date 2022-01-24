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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 size_t ALIGN_LEFT ; 
 size_t ALIGN_RIGHT ; 
 int /*<<< orphan*/  E_ERROR ; 
 size_t INT_MAX ; 
 size_t FUNC0 (size_t,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int ZEND_SIZE_MAX ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) inline static void
FUNC8(zend_string **buffer, size_t *pos, char *add,
						   size_t min_width, size_t max_width, char padding,
						   size_t alignment, size_t len, int neg, int expprec, int always_sign)
{
	register size_t npad;
	size_t req_size;
	size_t copy_len;
	size_t m_width;

	copy_len = (expprec ? FUNC1(max_width, len) : len);
	npad = (min_width < copy_len) ? 0 : min_width - copy_len;

	FUNC2(("sprintf: appendstring(%x, %d, %d, \"%s\", %d, '%c', %d)\n",
				  *buffer, *pos, FUNC3(*buffer), add, min_width, padding, alignment));
	m_width = FUNC0(min_width, copy_len);

	if(m_width > INT_MAX - *pos - 1) {
		FUNC6(E_ERROR, "Field width %zd is too long", m_width);
	}

	req_size = *pos + m_width + 1;

	if (req_size > FUNC3(*buffer)) {
		size_t size = FUNC3(*buffer);
		while (req_size > size) {
			if (size > ZEND_SIZE_MAX/2) {
				FUNC6(E_ERROR, "Field width %zd is too long", req_size);
			}
			size <<= 1;
		}
		FUNC2(("sprintf ereallocing buffer to %d bytes\n", size));
		*buffer = FUNC7(*buffer, size, 0);
	}
	if (alignment == ALIGN_RIGHT) {
		if ((neg || always_sign) && padding=='0') {
			FUNC4(*buffer)[(*pos)++] = (neg) ? '-' : '+';
			add++;
			len--;
			copy_len--;
		}
		while (npad-- > 0) {
			FUNC4(*buffer)[(*pos)++] = padding;
		}
	}
	FUNC2(("sprintf: appending \"%s\"\n", add));
	FUNC5(&FUNC4(*buffer)[*pos], add, copy_len + 1);
	*pos += copy_len;
	if (alignment == ALIGN_LEFT) {
		while (npad--) {
			FUNC4(*buffer)[(*pos)++] = padding;
		}
	}
}