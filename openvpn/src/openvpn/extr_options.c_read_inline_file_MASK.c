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
struct in_src {int dummy; } ;
struct gc_arena {int dummy; } ;
struct buffer {int capacity; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  M_FATAL ; 
 int OPTION_LINE_SIZE ; 
 struct buffer FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,struct buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*) ; 
 scalar_t__ FUNC8 (struct in_src*,char*,int) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ,struct gc_arena*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,scalar_t__) ; 

__attribute__((used)) static char *
FUNC15(struct in_src *is, const char *close_tag, struct gc_arena *gc)
{
    char line[OPTION_LINE_SIZE];
    struct buffer buf = FUNC2(8*OPTION_LINE_SIZE);
    char *ret;
    bool endtagfound = false;

    while (FUNC8(is, line, sizeof(line)))
    {
        char *line_ptr = line;
        /* Remove leading spaces */
        while (FUNC9(*line_ptr))
        {
            line_ptr++;
        }
        if (!FUNC14(line_ptr, close_tag, FUNC13(close_tag)))
        {
            endtagfound = true;
            break;
        }
        if (!FUNC6(&buf, FUNC13(line)+1))
        {
            /* Increase buffer size */
            struct buffer buf2 = FUNC2(buf.capacity * 2);
            FUNC0(FUNC4(&buf2, &buf));
            FUNC3(&buf);
            FUNC7(&buf);
            buf = buf2;
        }
        FUNC5(&buf, "%s", line);
    }
    if (!endtagfound)
    {
        FUNC10(M_FATAL, "ERROR: Endtag %s missing", close_tag);
    }
    ret = FUNC12(FUNC1(&buf), gc);
    FUNC3(&buf);
    FUNC7(&buf);
    FUNC11(line, sizeof(line));
    return ret;
}