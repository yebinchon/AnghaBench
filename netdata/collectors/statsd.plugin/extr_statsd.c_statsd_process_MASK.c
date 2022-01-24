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

/* Variables and functions */
 int /*<<< orphan*/  D_STATSD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline size_t FUNC8(char *buffer, size_t size, int require_newlines) {
    buffer[size] = '\0';
    FUNC0(D_STATSD, "RECEIVED: %zu bytes: '%s'", size, buffer);

    const char *s = buffer;
    while(*s) {
        const char *name = NULL, *value = NULL, *type = NULL, *sampling = NULL, *tags = NULL;
        char *name_end = NULL, *value_end = NULL, *type_end = NULL, *sampling_end = NULL, *tags_end = NULL;

        s = name_end = (char *)FUNC5(name = s, ':', '|');
        if(name == name_end) {
            s = FUNC4(s);
            continue;
        }

        if(FUNC1(*s == ':'))
            s = value_end = (char *) FUNC5(value = ++s, '|', '|');

        if(FUNC1(*s == '|'))
            s = type_end = (char *) FUNC5(type = ++s, '|', '@');

        if(FUNC1(*s == '|' || *s == '@')) {
            s = sampling_end = (char *) FUNC5(sampling = ++s, '|', '#');
            if(*sampling == '@') sampling++;
        }

        if(FUNC1(*s == '|' || *s == '#')) {
            s = tags_end = (char *) FUNC5(tags = ++s, '|', '|');
            if(*tags == '#') tags++;
        }

        // skip everything until the end of the line
        while(*s && *s != '\n') s++;

        if(FUNC7(require_newlines && *s != '\n' && s > buffer)) {
            // move the remaining data to the beginning
            size -= (name - buffer);
            FUNC2(buffer, name, size);
            return size;
        }
        else
            s = FUNC4(s);

        FUNC6(
                  FUNC3(name, name_end)
                , FUNC3(value, value_end)
                , FUNC3(type, type_end)
                , FUNC3(sampling, sampling_end)
                , FUNC3(tags, tags_end)
        );
    }

    return 0;
}