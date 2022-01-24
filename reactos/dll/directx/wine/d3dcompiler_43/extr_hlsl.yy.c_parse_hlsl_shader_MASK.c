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
typedef  enum shader_type { ____Placeholder_shader_type } shader_type ;
typedef  int /*<<< orphan*/  YY_BUFFER_STATE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bwriter_shader* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char**) ; 

struct bwriter_shader *FUNC4(const char *text, enum shader_type type, DWORD major, DWORD minor,
        const char *entrypoint, char **messages)
{
    struct bwriter_shader *ret = NULL;
    YY_BUFFER_STATE buffer;

    buffer = FUNC1(text);
    FUNC2(buffer);

    ret = FUNC3(type, major, minor, entrypoint, messages);

    FUNC0(buffer);
    return ret;
}