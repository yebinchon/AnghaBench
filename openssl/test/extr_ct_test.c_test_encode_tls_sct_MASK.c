#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {char* sct_text_file; int /*<<< orphan*/  sct_dir; int /*<<< orphan*/  sct_list; } ;
typedef  int /*<<< orphan*/  SCT ;

/* Variables and functions */
 int /*<<< orphan*/  CT_LOG_ENTRY_TYPE_X509 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SCT_VERSION_V1 ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int const,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ct_dir ; 
 TYPE_1__* fixture ; 
 int result ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void)
{
    const char log_id[] = "3xwuwRUAlFJHqWFoMl3cXHlZ6PfG04j8AC4LvT9012Q=";
    const uint64_t timestamp = 1;
    const char extensions[] = "";
    const char signature[] = "BAMARzBAMiBIL2dRrzXbplQ2vh/WZA89v5pBQpSVkkUwKI+j5"
            "eI+BgIhAOTtwNs6xXKx4vXoq2poBlOYfc9BAn3+/6EFUZ2J7b8I";
    SCT *sct = NULL;

    FUNC2();
    if (fixture == NULL)
        return 0;

    fixture->sct_list = FUNC4();
    if (!FUNC3(sct = FUNC1(SCT_VERSION_V1, log_id,
                                            CT_LOG_ENTRY_TYPE_X509, timestamp,
                                            extensions, signature)))

        return 0;

    FUNC5(fixture->sct_list, sct);
    fixture->sct_dir = ct_dir;
    fixture->sct_text_file = "tls1.sct";
    FUNC0();
    return result;
}