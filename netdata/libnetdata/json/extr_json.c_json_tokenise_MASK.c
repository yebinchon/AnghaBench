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
typedef  int /*<<< orphan*/  jsmntok_t ;
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 int JSMN_ERROR_INVAL ; 
 int JSMN_ERROR_NOMEM ; 
 int JSMN_ERROR_PART ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *,int) ; 
 int json_tokens ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 

jsmntok_t *FUNC6(char *js, size_t len, size_t *count)
{
    int n = json_tokens;
    if(!js || !len) {
        FUNC0("JSON: json string is empty.");
        return NULL;
    }

    jsmn_parser parser;
    FUNC2(&parser);

    jsmntok_t *tokens = FUNC4(sizeof(jsmntok_t) * n);
    if(!tokens) return NULL;

    int ret = FUNC3(&parser, js, len, tokens, n);
    while (ret == JSMN_ERROR_NOMEM) {
        n *= 2;
        jsmntok_t *new = FUNC5(tokens, sizeof(jsmntok_t) * n);
        if(!new) {
            FUNC1(tokens);
            return NULL;
        }
        tokens = new;
        ret = FUNC3(&parser, js, len, tokens, n);
    }

    if (ret == JSMN_ERROR_INVAL) {
        FUNC0("JSON: Invalid json string.");
        FUNC1(tokens);
        return NULL;
    }
    else if (ret == JSMN_ERROR_PART) {
        FUNC0("JSON: Truncated JSON string.");
        FUNC1(tokens);
        return NULL;
    }

    if(count) *count = (size_t)ret;

    if(json_tokens < n) json_tokens = n;
    return tokens;
}