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
typedef  int /*<<< orphan*/  OSSL_CMP_PKIFREETEXT ;
typedef  int /*<<< orphan*/  OSSL_CMP_CTX ;
typedef  int /*<<< orphan*/  ASN1_UTF8STRING ;

/* Variables and functions */
 int /*<<< orphan*/  ADVANCE_BUFFER ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,size_t,char*,...) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int OSSL_CMP_PKIFAILUREINFO_MAX ; 
 int OSSL_CMP_PKISTATUS_accepted ; 
 int OSSL_CMP_PKISTATUS_grantedWithMods ; 
 char* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 

char *FUNC9(OSSL_CMP_CTX *ctx, char *buf,
                                     size_t bufsize)
{
    int status, failure, fail_info;
    const char *status_string, *failure_string;
    OSSL_CMP_PKIFREETEXT *status_strings;
    ASN1_UTF8STRING *text;
    int i;
    int printed_chars;
    int failinfo_found = 0;
    int n_status_strings;
    char* write_ptr = buf;

#define ADVANCE_BUFFER                                         \
    if (printed_chars < 0 || (size_t)printed_chars >= bufsize) \
        return NULL; \
    write_ptr += printed_chars; \
    bufsize -= printed_chars;

    if (ctx == NULL
            || buf == NULL
            || (status = FUNC5(ctx)) < 0
            || (status_string = FUNC6(status)) == NULL)
        return NULL;
    printed_chars = FUNC1(write_ptr, bufsize, "%s", status_string);
    ADVANCE_BUFFER;

    /* failInfo is optional and may be empty */
    if ((fail_info = FUNC4(ctx)) > 0) {
        printed_chars = FUNC1(write_ptr, bufsize, "; PKIFailureInfo: ");
        ADVANCE_BUFFER;
        for (failure = 0; failure <= OSSL_CMP_PKIFAILUREINFO_MAX; failure++) {
            if ((fail_info & (1 << failure)) != 0) {
                failure_string = FUNC2(failure);
                if (failure_string != NULL) {
                    printed_chars = FUNC1(write_ptr, bufsize, "%s%s",
                                                 failure > 0 ? ", " : "",
                                                 failure_string);
                    ADVANCE_BUFFER;
                    failinfo_found = 1;
                }
            }
        }
    }
    if (!failinfo_found && status != OSSL_CMP_PKISTATUS_accepted
            && status != OSSL_CMP_PKISTATUS_grantedWithMods) {
        printed_chars = FUNC1(write_ptr, bufsize, "; <no failure info>");
        ADVANCE_BUFFER;
    }

    /* statusString sequence is optional and may be empty */
    status_strings = FUNC3(ctx);
    n_status_strings = FUNC7(status_strings);
    if (n_status_strings > 0) {
        printed_chars = FUNC1(write_ptr, bufsize, "; StatusString%s: ",
                                     n_status_strings > 1 ? "s" : "");
        ADVANCE_BUFFER;
        for (i = 0; i < n_status_strings; i++) {
            text = FUNC8(status_strings, i);
            printed_chars = FUNC1(write_ptr, bufsize, "\"%s\"%s",
                                         FUNC0(text),
                                         i < n_status_strings - 1 ? ", " : "");
            ADVANCE_BUFFER;
        }
    }
#undef ADVANCE_BUFFER
    return buf;
}