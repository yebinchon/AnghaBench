#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Banner1 {void* http_fields; void* html_fields; } ;
struct TYPE_6__ {int /*<<< orphan*/  hello_length; scalar_t__ hello; } ;
struct TYPE_5__ {int /*<<< orphan*/  is_anchored; int /*<<< orphan*/  id; int /*<<< orphan*/  pattern_length; scalar_t__ pattern; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_anchored; int /*<<< orphan*/  id; int /*<<< orphan*/  pattern_length; scalar_t__ pattern; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMACK_CASE_INSENSITIVE ; 
 TYPE_3__ banner_http ; 
 TYPE_2__* html_fields ; 
 TYPE_1__* http_fields ; 
 int /*<<< orphan*/  http_hello ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC5(struct Banner1 *b)
{
    unsigned i;

    /*
     * These match HTTP Header-Field: names
     */
    b->http_fields = FUNC4("http", SMACK_CASE_INSENSITIVE);
    for (i=0; http_fields[i].pattern; i++)
        FUNC2(
                          b->http_fields,
                          http_fields[i].pattern,
                          http_fields[i].pattern_length,
                          http_fields[i].id,
                          http_fields[i].is_anchored);
    FUNC3(b->http_fields);

    /*
     * These match HTML <tag names
     */
    b->html_fields = FUNC4("html", SMACK_CASE_INSENSITIVE);
    for (i=0; html_fields[i].pattern; i++)
        FUNC2(
                          b->html_fields,
                          html_fields[i].pattern,
                          html_fields[i].pattern_length,
                          html_fields[i].id,
                          html_fields[i].is_anchored);
    FUNC3(b->html_fields);

    banner_http.hello = FUNC0(banner_http.hello_length);
    FUNC1((char*)banner_http.hello, http_hello, banner_http.hello_length);

    return b->http_fields;
}