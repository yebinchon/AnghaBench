#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  encoding; } ;
struct TYPE_8__ {TYPE_2__* data; TYPE_2__* expected_err; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  TYPE_2__ ENCODE_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BASE64_CANONICAL_ENCODING ; 
 int /*<<< orphan*/  BASE64_INVALID_ENCODING ; 
 int /*<<< orphan*/  BASE64_VALID_ENCODING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(EVP_TEST *t, const char *encoding)
{
    ENCODE_DATA *edata;

    if (!FUNC4(edata = FUNC2(sizeof(*edata))))
        return 0;
    if (FUNC5(encoding, "canonical") == 0) {
        edata->encoding = BASE64_CANONICAL_ENCODING;
    } else if (FUNC5(encoding, "valid") == 0) {
        edata->encoding = BASE64_VALID_ENCODING;
    } else if (FUNC5(encoding, "invalid") == 0) {
        edata->encoding = BASE64_INVALID_ENCODING;
        if (!FUNC4(t->expected_err = FUNC1("DECODE_ERROR")))
            goto err;
    } else {
        FUNC3("Bad encoding: %s."
                   " Should be one of {canonical, valid, invalid}",
                   encoding);
        goto err;
    }
    t->data = edata;
    return 1;
err:
    FUNC0(edata);
    return 0;
}