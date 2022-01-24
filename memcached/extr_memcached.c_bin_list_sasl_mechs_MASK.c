#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ keylen; scalar_t__ bodylen; } ;
struct TYPE_10__ {TYPE_1__ request; } ;
struct TYPE_11__ {int /*<<< orphan*/  sasl_conn; TYPE_2__ binary_header; } ;
typedef  TYPE_3__ conn ;
struct TYPE_12__ {scalar_t__ verbose; int /*<<< orphan*/  sasl; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_AUTH_ERROR ; 
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND ; 
 int SASL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,char const**,unsigned int*,int /*<<< orphan*/ *) ; 
 TYPE_6__ settings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(conn *c) {
    // Guard against a disabled SASL.
    if (!settings.sasl) {
        FUNC3(c, PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND, NULL,
                        c->binary_header.request.bodylen
                        - c->binary_header.request.keylen);
        return;
    }

    FUNC1(c);
    const char *result_string = NULL;
    unsigned int string_length = 0;
    int result=FUNC2(c->sasl_conn, NULL,
                             "",   /* What to prepend the string with */
                             " ",  /* What to separate mechanisms with */
                             "",   /* What to append to the string */
                             &result_string, &string_length,
                             NULL);
    if (result != SASL_OK) {
        /* Perhaps there's a better error for this... */
        if (settings.verbose) {
            FUNC0(stderr, "Failed to list SASL mechanisms.\n");
        }
        FUNC3(c, PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, NULL, 0);
        return;
    }
    FUNC4(c, (char*)result_string, 0, 0, string_length);
}