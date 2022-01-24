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
struct my_sink {int off; char* buf; int /*<<< orphan*/  cap; } ;
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct my_sink*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_writer ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static void FUNC9()
{
    struct my_sink s;
    json_t *json;
    const char str[] = "[\"A\", {\"B\": \"C\", \"e\": false}, 1, null, \"foo\"]";
    char *dumped_to_string;

    json = FUNC5(str, 0, NULL);
    if(!json) {
        FUNC0("json_loads failed");
    }

    dumped_to_string = FUNC4(json, 0);
    if (!dumped_to_string) {
        FUNC2(json);
        FUNC0("json_dumps failed");
    }

    s.off = 0;
    s.cap = FUNC7(dumped_to_string);
    s.buf = FUNC6(s.cap);
    if (!s.buf) {
        FUNC2(json);
        FUNC1(dumped_to_string);
        FUNC0("malloc failed");
    }

    if (FUNC3(json, my_writer, &s, 0) == -1) {
        FUNC2(json);
        FUNC1(dumped_to_string);
        FUNC1(s.buf);
        FUNC0("json_dump_callback failed on an exact-length sink buffer");
    }

    if (FUNC8(dumped_to_string, s.buf, s.off) != 0) {
        FUNC2(json);
        FUNC1(dumped_to_string);
        FUNC1(s.buf);
        FUNC0("json_dump_callback and json_dumps did not produce identical output");
    }

    s.off = 1;
    if (FUNC3(json, my_writer, &s, 0) != -1) {
        FUNC2(json);
        FUNC1(dumped_to_string);
        FUNC1(s.buf);
        FUNC0("json_dump_callback succeeded on a short buffer when it should have failed");
    }

    FUNC2(json);
    FUNC1(dumped_to_string);
    FUNC1(s.buf);
}