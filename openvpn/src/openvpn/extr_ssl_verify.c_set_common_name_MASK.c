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
typedef  scalar_t__ uint32_t ;
struct tls_session {scalar_t__ common_name_hashval; int /*<<< orphan*/ * common_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,scalar_t__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(struct tls_session *session, const char *common_name)
{
    if (session->common_name)
    {
        FUNC0(session->common_name);
        session->common_name = NULL;
#ifdef ENABLE_PF
        session->common_name_hashval = 0;
#endif
    }
    if (common_name)
    {
        /* FIXME: Last alloc will never be freed */
        session->common_name = FUNC2(common_name, NULL);
#ifdef ENABLE_PF
        {
            const uint32_t len = (uint32_t) strlen(common_name);
            if (len)
            {
                session->common_name_hashval = hash_func((const uint8_t *)common_name, len+1, 0);
            }
            else
            {
                session->common_name_hashval = 0;
            }
        }
#endif
    }
}