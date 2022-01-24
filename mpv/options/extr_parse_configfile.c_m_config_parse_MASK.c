#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  m_profile_t ;
struct TYPE_32__ {scalar_t__ recursion_depth; } ;
typedef  TYPE_1__ m_config_t ;
typedef  int /*<<< orphan*/  loc ;
struct TYPE_33__ {long long len; char* start; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*,...) ; 
 TYPE_2__ FUNC2 (TYPE_2__,long long) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__,TYPE_2__*) ; 
 TYPE_2__ FUNC6 (TYPE_2__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__,char*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__ FUNC8 (TYPE_2__) ; 
 TYPE_2__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__,char) ; 
 char* FUNC11 (void*,TYPE_2__) ; 
 long long FUNC12 (TYPE_2__,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__) ; 
 scalar_t__ FUNC17 (char) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 void* FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(m_config_t *config, const char *location, bstr data,
                   char *initial_section, int flags)
{
    m_profile_t *profile = FUNC13(config, initial_section);
    void *tmp = FUNC22(NULL);
    int line_no = 0;
    int errors = 0;

    FUNC3(&data, "\xEF\xBB\xBF"); // skip BOM

    while (data.len) {
        FUNC21(tmp);
        bool ok = false;

        line_no++;
        char loc[512];
        FUNC19(loc, sizeof(loc), "%s:%d:", location, line_no);

        bstr line = FUNC9(FUNC5(data, &data));
        if (!FUNC18(&line))
            continue;

        // Profile declaration
        if (FUNC3(&line, "[")) {
            bstr profilename;
            if (!FUNC7(line, "]", &profilename, &line)) {
                FUNC1(config, "%s missing closing ]\n", loc);
                goto error;
            }
            if (FUNC18(&line)) {
                FUNC1(config, "%s unparseable extra characters: '%.*s'\n",
                       loc, FUNC0(line));
                goto error;
            }
            profile = FUNC13(config, FUNC11(tmp, profilename));
            continue;
        }

        FUNC3(&line, "--");

        bstr option = line;
        while (line.len && (FUNC17(line.start[0]) || line.start[0] == '_' ||
                            line.start[0] == '-'))
            line = FUNC2(line, 1);
        option.len = option.len - line.len;
        FUNC18(&line);

        bstr value = {0};
        if (FUNC3(&line, "=")) {
            FUNC18(&line);
            if (line.len && (line.start[0] == '"' || line.start[0] == '\'')) {
                // Simple quoting, like "value"
                char term[2] = {line.start[0], 0};
                line = FUNC2(line, 1);
                if (!FUNC7(line, term, &value, &line)) {
                    FUNC1(config, "%s unterminated quote\n", loc);
                    goto error;
                }
            } else if (FUNC3(&line, "%")) {
                // Quoting with length, like %5%value
                bstr rest;
                long long len = FUNC12(line, &rest, 10);
                if (rest.len == line.len || !FUNC3(&rest, "%") ||
                    len > rest.len)
                {
                    FUNC1(config, "%s fixed-length quoting expected - put "
                           "\"quotes\" around the option value if you did not "
                           "intend to use this, but your option value starts "
                           "with '%%'\n", loc);
                    goto error;
                }
                value = FUNC6(rest, 0, len);
                line = FUNC2(rest, len);
            } else {
                // No quoting; take everything until the comment or end of line
                int end = FUNC10(line, '#');
                value = FUNC8(end < 0 ? line : FUNC6(line, 0, end));
                line.len = 0;
            }
        }
        if (FUNC18(&line)) {
            FUNC1(config, "%s unparseable extra characters: '%.*s'\n",
                   loc, FUNC0(line));
            goto error;
        }

        int res;
        if (FUNC4(option, "profile-desc")) {
            FUNC16(profile, value);
            res = 0;
        } else {
            res = FUNC15(config, profile, option, value);
        }
        if (res < 0) {
            FUNC1(config, "%s setting option %.*s='%.*s' failed.\n",
                   loc, FUNC0(option), FUNC0(value));
            goto error;
        }

        ok = true;
    error:
        if (!ok)
            errors++;
        if (errors > 16) {
            FUNC1(config, "%s: too many errors, stopping.\n", location);
            break;
        }
    }

    if (config->recursion_depth == 0)
        FUNC14(config, flags);

    FUNC20(tmp);
    return 1;
}