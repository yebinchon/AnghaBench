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
struct bwriter_shader {int dummy; } ;
typedef  int /*<<< orphan*/  YY_BUFFER_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct bwriter_shader* FUNC4 (char**) ; 

struct bwriter_shader *FUNC5(const char *text, char **messages) {
    struct bwriter_shader *ret = NULL;
    YY_BUFFER_STATE buffer;
    FUNC0("%p, %p\n", text, messages);

    buffer = FUNC2(text);
    FUNC3(buffer);

    ret = FUNC4(messages);

    FUNC1(buffer);

    return ret;
}