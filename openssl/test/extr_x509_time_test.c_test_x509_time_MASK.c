#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int expected; int expected_type; int expected_string; int /*<<< orphan*/  data; scalar_t__ set_string; } ;
struct TYPE_6__ {int type; int data; } ;
typedef  TYPE_1__ ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 TYPE_2__* x509_format_tests ; 

__attribute__((used)) static int FUNC6(int idx)
{
    ASN1_TIME *t = NULL;
    int result, rv = 0;

    if (x509_format_tests[idx].set_string) {
        /* set-string mode */
        t = FUNC1();
        if (t == NULL) {
            FUNC3("test_x509_time(%d) failed: internal error\n", idx);
            return 0;
        }
    }

    result = FUNC2(t, x509_format_tests[idx].data);
    /* time string parsing result is always checked against what's expected */
    if (!FUNC4(result, x509_format_tests[idx].expected)) {
        FUNC3("test_x509_time(%d) failed: expected %d, got %d\n",
                idx, x509_format_tests[idx].expected, result);
        goto out;
    }

    /* if t is not NULL but expected_type is ignored(-1), it is an 'OK' case */
    if (t != NULL && x509_format_tests[idx].expected_type != -1) {
        if (!FUNC4(t->type, x509_format_tests[idx].expected_type)) {
            FUNC3("test_x509_time(%d) failed: expected_type %d, got %d\n",
                    idx, x509_format_tests[idx].expected_type, t->type);
            goto out;
        }
    }

    /* if t is not NULL but expected_string is NULL, it is an 'OK' case too */
    if (t != NULL && x509_format_tests[idx].expected_string) {
        if (!FUNC5((const char *)t->data,
                    x509_format_tests[idx].expected_string)) {
            FUNC3("test_x509_time(%d) failed: expected_string %s, got %s\n",
                    idx, x509_format_tests[idx].expected_string, t->data);
            goto out;
        }
    }

    rv = 1;
out:
    if (t != NULL)
        FUNC0(t);
    return rv;
}