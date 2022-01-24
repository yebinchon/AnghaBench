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
struct options {int /*<<< orphan*/  gc; } ;
struct env_set {int dummy; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  MAX_PARMS ; 
 int OPTION_LINE_SIZE ; 
 scalar_t__ FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (struct options*,char**,char const*,int,int,int const,unsigned int const,unsigned int*,struct env_set*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int const,char*,char const*,int const,...) ; 
 scalar_t__ FUNC8 (char*,char**,scalar_t__,char const*,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC14(struct options *options,
                 const char *file,
                 int level,
                 const char *top_file,
                 const int top_line,
                 const int msglevel,
                 const unsigned int permission_mask,
                 unsigned int *option_types_found,
                 struct env_set *es)
{
    const int max_recursive_levels = 10;
    FILE *fp;
    int line_num;
    char line[OPTION_LINE_SIZE+1];
    char *p[MAX_PARMS+1];

    ++level;
    if (level <= max_recursive_levels)
    {
        if (FUNC11(file, "stdin"))
        {
            fp = stdin;
        }
        else
        {
            fp = FUNC9(file, "r");
        }
        if (fp)
        {
            line_num = 0;
            while (FUNC6(line, sizeof(line), fp))
            {
                int offset = 0;
                FUNC0(p);
                ++line_num;
                if (FUNC12(line) == OPTION_LINE_SIZE)
                {
                    FUNC7(msglevel, "In %s:%d: Maximum option line length (%d) exceeded, line starts with %s",
                        file, line_num, OPTION_LINE_SIZE, line);
                }

                /* Ignore UTF-8 BOM at start of stream */
                if (line_num == 1 && FUNC13(line, "\xEF\xBB\xBF", 3) == 0)
                {
                    offset = 3;
                }
                if (FUNC8(line + offset, p, FUNC1(p)-1, file, line_num, msglevel, &options->gc))
                {
                    FUNC3(&p[0]);
                    FUNC4(fp, p, &options->gc);
                    FUNC2(options, p, file, line_num, level, msglevel, permission_mask, option_types_found, es);
                }
            }
            if (fp != stdin)
            {
                FUNC5(fp);
            }
        }
        else
        {
            FUNC7(msglevel, "In %s:%d: Error opening configuration file: %s", top_file, top_line, file);
        }
    }
    else
    {
        FUNC7(msglevel, "In %s:%d: Maximum recursive include levels exceeded in include attempt of file %s -- probably you have a configuration file that tries to include itself.", top_file, top_line, file);
    }
    FUNC10(line, sizeof(line));
    FUNC0(p);
}