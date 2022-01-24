#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  input; int /*<<< orphan*/  output_len; int /*<<< orphan*/  output; } ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  TYPE_2__ DIGEST_DATA ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(EVP_TEST *t,
                             const char *keyword, const char *value)
{
    DIGEST_DATA *mdata = t->data;

    if (FUNC4(keyword, "Input") == 0)
        return FUNC0(value, &mdata->input);
    if (FUNC4(keyword, "Output") == 0)
        return FUNC3(value, &mdata->output, &mdata->output_len);
    if (FUNC4(keyword, "Count") == 0)
        return FUNC2(value, mdata->input);
    if (FUNC4(keyword, "Ncopy") == 0)
        return FUNC1(value, mdata->input);
    return 0;
}