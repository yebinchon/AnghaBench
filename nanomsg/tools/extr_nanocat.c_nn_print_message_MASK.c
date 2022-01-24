#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int echo_format; } ;
typedef  TYPE_1__ nn_options_t ;

/* Variables and functions */
#define  NN_ECHO_ASCII 133 
#define  NN_ECHO_HEX 132 
#define  NN_ECHO_MSGPACK 131 
#define  NN_ECHO_QUOTED 130 
#define  NN_ECHO_RAW 129 
#define  NN_NO_ECHO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC5 (nn_options_t *options, char *buf, int buflen)
{
    switch (options->echo_format) {
    case NN_NO_ECHO:
        return;
    case NN_ECHO_RAW:
        FUNC3 (buf, 1, buflen, stdout);
        break;
    case NN_ECHO_ASCII:
        for (; buflen > 0; --buflen, ++buf) {
            if (FUNC4 (*buf)) {
                FUNC2 (*buf, stdout);
            } else {
                FUNC2 ('.', stdout);
            }
        }
        FUNC2 ('\n', stdout);
        break;
    case NN_ECHO_QUOTED:
        FUNC2 ('"', stdout);
        for (; buflen > 0; --buflen, ++buf) {
            switch (*buf) {
            case '\n':
                FUNC1 (stdout, "\\n");
                break;
            case '\r':
                FUNC1 (stdout, "\\r");
                break;
            case '\\':
            case '\"':
                FUNC1 (stdout, "\\%c", *buf);
                break;
            default:
                if (FUNC4 (*buf)) {
                    FUNC2 (*buf, stdout);
                } else {
                    FUNC1 (stdout, "\\x%02x", (unsigned char)*buf);
                }
            }
        }
        FUNC1 (stdout, "\"\n");
        break;
    case NN_ECHO_MSGPACK:
        if (buflen < 256) {
            FUNC2 ('\xc4', stdout);
            FUNC2 (buflen, stdout);
            FUNC3 (buf, 1, buflen, stdout);
        } else if (buflen < 65536) {
            FUNC2 ('\xc5', stdout);
            FUNC2 (buflen >> 8, stdout);
            FUNC2 (buflen & 0xff, stdout);
            FUNC3 (buf, 1, buflen, stdout);
        } else {
            FUNC2 ('\xc6', stdout);
            FUNC2 (buflen >> 24, stdout);
            FUNC2 ((buflen >> 16) & 0xff, stdout);
            FUNC2 ((buflen >> 8) & 0xff, stdout);
            FUNC2 (buflen & 0xff, stdout);
            FUNC3 (buf, 1, buflen, stdout);
        }
        break;
    case NN_ECHO_HEX:
        FUNC2 ('"', stdout);
        for (; buflen > 0; --buflen, ++buf) {
             FUNC1 (stdout, "\\x%02x", (unsigned char)*buf);
        }
        FUNC1 (stdout, "\"\n");
        break;
    
    }
    FUNC0 (stdout);
}