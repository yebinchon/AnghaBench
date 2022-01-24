#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_4__ {int line; int column; int position; char* text; } ;
typedef  TYPE_1__ json_error_t ;

/* Variables and functions */
 size_t JSON_COMPACT ; 
 size_t JSON_ENSURE_ASCII ; 
 size_t FUNC0 (int) ; 
 size_t JSON_PRESERVE_ORDER ; 
 size_t FUNC1 (int) ; 
 size_t JSON_SORT_KEYS ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 size_t FUNC5 (char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 char* FUNC14 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

int FUNC16()
{
    int indent, precision;
    size_t flags = 0;
    json_t *json;
    json_error_t error;

    #ifdef _WIN32
    /* On Windows, set stdout and stderr to binary mode to avoid
       outputting DOS line terminators */
    _setmode(_fileno(stdout), _O_BINARY);
    _setmode(_fileno(stderr), _O_BINARY);
    #endif

    indent = FUNC8("JSON_INDENT");
    if(indent < 0 || indent > 31) {
        FUNC4(stderr, "invalid value for JSON_INDENT: %d\n", indent);
        return 2;
    }
    if(indent > 0)
        flags |= FUNC0(indent);

    if(FUNC8("JSON_COMPACT") > 0)
        flags |= JSON_COMPACT;

    if(FUNC8("JSON_ENSURE_ASCII"))
        flags |= JSON_ENSURE_ASCII;

    if(FUNC8("JSON_PRESERVE_ORDER"))
        flags |= JSON_PRESERVE_ORDER;

    if(FUNC8("JSON_SORT_KEYS"))
        flags |= JSON_SORT_KEYS;

    precision = FUNC8("JSON_REAL_PRECISION");
    if(precision < 0 || precision > 31) {
        FUNC4(stderr, "invalid value for JSON_REAL_PRECISION: %d\n",
                precision);
        return 2;
    }

    if(FUNC7("HASHSEED"))
        FUNC13(FUNC8("HASHSEED"));

    if(precision > 0)
        flags |= FUNC1(precision);

    if(FUNC8("STRIP")) {
        /* Load to memory, strip leading and trailing whitespace */
        size_t size = 0, used = 0;
        char *buffer = NULL, *buf_ck = NULL;

        while(1) {
            size_t count;

            size = (size == 0 ? 128 : size * 2);
            buf_ck = FUNC14(buffer, size);
            if(!buf_ck) {
                FUNC4(stderr, "Unable to allocate %d bytes\n", (int)size);
                FUNC6(buffer);
                return 1;
            }
            buffer = buf_ck;

            count = FUNC5(buffer + used, 1, size - used, stdin);
            if(count < size - used) {
                buffer[used + count] = '\0';
                break;
            }
            used += count;
        }

        json = FUNC12(FUNC15(buffer), 0, &error);
        FUNC6(buffer);
    }
    else
        json = FUNC11(stdin, 0, &error);

    if(!json) {
        FUNC4(stderr, "%d %d %d\n%s\n",
            error.line, error.column,
            error.position, error.text);
        return 1;
    }

    FUNC10(json, stdout, flags);
    FUNC9(json);

    return 0;
}