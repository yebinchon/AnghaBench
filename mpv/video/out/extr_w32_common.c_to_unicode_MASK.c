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
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(UINT vkey, UINT scancode, const BYTE keys[256])
{
    // This wraps ToUnicode to be stateless and to return only one character

    // Make the buffer 10 code units long to be safe, same as here:
    // https://web.archive.org/web/20101013215215/http://blogs.msdn.com/b/michkap/archive/2006/03/24/559169.aspx
    wchar_t buf[10] = { 0 };

    // Dead keys aren't useful for key shortcuts, so clear the keyboard state
    FUNC3();

    int len = FUNC2(vkey, scancode, keys, buf, FUNC1(buf), 0);

    // Return the last complete UTF-16 code point. A negative return value
    // indicates a dead key, however there should still be a non-combining
    // version of the key in the buffer.
    if (len < 0)
        len = -len;
    if (len >= 2 && FUNC0(buf[len - 2], buf[len - 1]))
        return FUNC4(buf[len - 2], buf[len - 1]);
    if (len >= 1)
        return buf[len - 1];

    return 0;
}