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
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 scalar_t__ GL_NO_ERROR ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline bool FUNC3(const char *funcname)
{
	GLenum errorcode = FUNC1();
	if (errorcode != GL_NO_ERROR) {
		int attempts = 8;
		do {
			FUNC0(LOG_ERROR,
			     "%s failed, glGetError returned %s(0x%X)",
			     funcname, FUNC2(errorcode), errorcode);
			errorcode = FUNC1();

			--attempts;
			if (attempts == 0) {
				FUNC0(LOG_ERROR,
				     "Too many GL errors, moving on");
				break;
			}
		} while (errorcode != GL_NO_ERROR);
		return false;
	}

	return true;
}