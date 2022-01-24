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
typedef  int /*<<< orphan*/  uint8_t ;
struct options {int /*<<< orphan*/  gc; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  MAX_PARMS ; 
 int OPTION_LINE_SIZE ; 
 scalar_t__ FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (struct options*,char**,char const*,int,int /*<<< orphan*/ ,int const,unsigned int const,unsigned int*,struct env_set*) ; 
 scalar_t__ FUNC3 (struct buffer*,char,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char**,scalar_t__,char const*,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10(const char *prefix,
                   struct options *options,
                   const char *config,
                   const int msglevel,
                   const unsigned int permission_mask,
                   unsigned int *option_types_found,
                   struct env_set *es)
{
    char line[OPTION_LINE_SIZE];
    struct buffer multiline;
    int line_num = 0;

    FUNC4(&multiline, (uint8_t *)config, FUNC9(config));

    while (FUNC3(&multiline, '\n', line, sizeof(line)))
    {
        char *p[MAX_PARMS+1];
        FUNC0(p);
        ++line_num;
        if (FUNC7(line, p, FUNC1(p)-1, prefix, line_num, msglevel, &options->gc))
        {
            FUNC5(&p[0]);
            FUNC6(&multiline, p, &options->gc);
            FUNC2(options, p, prefix, line_num, 0, msglevel, permission_mask, option_types_found, es);
        }
        FUNC0(p);
    }
    FUNC8(line, sizeof(line));
}