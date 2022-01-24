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
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPTION_PARM_SIZE ; 
 scalar_t__ FUNC0 (struct buffer*,int const,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gc_arena*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int,struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int const,char*,char const*,char const*,char const*,char const*,char const*) ; 
 char* FUNC5 (char const*,struct gc_arena*) ; 
 char const* FUNC6 (char const*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static void
FUNC10(const int msglevel,
                           const int delim,
                           const bool report_inconsistent,
                           const char *p1,
                           const struct buffer *b2_src,
                           const char *b1_name,
                           const char *b2_name)
{
    /* We will stop sending 'key-method', 'keydir', 'proto' and 'tls-auth' in
     * OCC in a future version (because it's not useful). To reduce questions
     * when interoperating, we no longer printing a warning about it.
     */
    if (FUNC9(p1, "key-method ")
        || FUNC9(p1, "keydir ")
        || FUNC9(p1, "proto ")
        || FUNC9(p1, "tls-auth ")
        || FUNC9(p1, "tun-ipv6"))
    {
        return;
    }

    if (FUNC8(p1) > 0)
    {
        struct gc_arena gc = FUNC3();
        struct buffer b2 = *b2_src;
        const char *p1_prefix = FUNC5(p1, &gc);
        char *p2 = FUNC2(OPTION_PARM_SIZE, false, &gc);

        while (FUNC0(&b2, delim, p2, OPTION_PARM_SIZE))
        {
            if (FUNC8(p2))
            {
                const char *p2_prefix = FUNC5(p2, &gc);

                if (!FUNC7(p1, p2))
                {
                    goto done;
                }
                if (!FUNC7(p1_prefix, p2_prefix))
                {
                    if (report_inconsistent)
                    {
                        FUNC4(msglevel, "WARNING: '%s' is used inconsistently, %s='%s', %s='%s'",
                            FUNC6(p1_prefix, &gc),
                            b1_name,
                            FUNC6(p1, &gc),
                            b2_name,
                            FUNC6(p2, &gc));
                    }
                    goto done;
                }
            }
        }

        FUNC4(msglevel, "WARNING: '%s' is present in %s config but missing in %s config, %s='%s'",
            FUNC6(p1_prefix, &gc),
            b1_name,
            b2_name,
            b1_name,
            FUNC6(p1, &gc));

done:
        FUNC1(&gc);
    }
}