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
struct TYPE_2__ {int have_hashseed; void* hashseed; void* strip; void* precision; void* sort_keys; void* preserve_order; void* ensure_ascii; void* compact; void* indent; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(FILE *conffile)
{
    char *buffer, *line, *val;

    buffer = FUNC2(conffile);
    for (line = FUNC7(buffer, "\r\n"); line; line = FUNC7(NULL, "\r\n")) {
        if (!FUNC6(line, "export ", 7))
            continue;
        val = FUNC4(line, '=');
        if (!val) {
            FUNC3("invalid configuration line\n");
            break;
        }
        *val++ = '\0';

        if (!FUNC5(line, "JSON_INDENT"))
            conf.indent = FUNC0(val);
        if (!FUNC5(line, "JSON_COMPACT"))
            conf.compact = FUNC0(val);
        if (!FUNC5(line, "JSON_ENSURE_ASCII"))
            conf.ensure_ascii = FUNC0(val);
        if (!FUNC5(line, "JSON_PRESERVE_ORDER"))
            conf.preserve_order = FUNC0(val);
        if (!FUNC5(line, "JSON_SORT_KEYS"))
            conf.sort_keys = FUNC0(val);
        if (!FUNC5(line, "JSON_REAL_PRECISION"))
            conf.precision = FUNC0(val);
        if (!FUNC5(line, "STRIP"))
            conf.strip = FUNC0(val);
        if (!FUNC5(line, "HASHSEED")) {
            conf.have_hashseed = 1;
            conf.hashseed = FUNC0(val);
        } else {
            conf.have_hashseed = 0;
        }
    }

    FUNC1(buffer);
}