#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ position; } ;
struct TYPE_13__ {char token; TYPE_1__ stream; scalar_t__ depth; } ;
typedef  TYPE_2__ lex_t ;
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_14__ {int position; } ;
typedef  TYPE_3__ json_error_t ;

/* Variables and functions */
 size_t JSON_DECODE_ANY ; 
 size_t JSON_DISABLE_EOF_CHECK ; 
 char TOKEN_EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,size_t,TYPE_3__*) ; 

__attribute__((used)) static json_t *FUNC4(lex_t *lex, size_t flags, json_error_t *error)
{
    json_t *result;

    lex->depth = 0;

    FUNC2(lex, error);
    if(!(flags & JSON_DECODE_ANY)) {
        if(lex->token != '[' && lex->token != '{') {
            FUNC0(error, lex, "'[' or '{' expected");
            return NULL;
        }
    }

    result = FUNC3(lex, flags, error);
    if(!result)
        return NULL;

    if(!(flags & JSON_DISABLE_EOF_CHECK)) {
        FUNC2(lex, error);
        if(lex->token != TOKEN_EOF) {
            FUNC0(error, lex, "end of file expected");
            FUNC1(result);
            return NULL;
        }
    }

    if(error) {
        /* Save the position even though there was no error */
        error->position = (int)lex->stream.position;
    }

    return result;
}