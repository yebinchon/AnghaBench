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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509V3_EXT_DEFAULT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(X509_EXTENSION *extension,
                                      const char *expected_output)
{
    BIO *text_buffer = NULL;
    char *actual_output = NULL;
    int result = 0;

    if (!FUNC5(text_buffer = FUNC2(FUNC3()))
            || !FUNC7(FUNC8(text_buffer, extension,
                                           X509V3_EXT_DEFAULT, 0)))
        goto end;

    /* Append \0 because we're about to use the buffer contents as a string. */
    if (!FUNC7(FUNC4(text_buffer, "\0", 1)))
        goto end;

    FUNC1(text_buffer, &actual_output);
    if (!FUNC6(actual_output, expected_output))
        goto end;

    result = 1;

end:
    FUNC0(text_buffer);
    return result;
}