#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ token_t ;
typedef  int /*<<< orphan*/  conn ;
struct TYPE_6__ {unsigned int verbose; } ;

/* Variables and functions */
 unsigned int MAX_VERBOSITY_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,size_t const) ; 
 TYPE_2__ settings ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(conn *c, token_t *tokens, const size_t ntokens) {
    unsigned int level;

    FUNC0(c != NULL);

    FUNC2(c, tokens, ntokens);

    level = FUNC3(tokens[1].value, NULL, 10);
    settings.verbose = level > MAX_VERBOSITY_LEVEL ? MAX_VERBOSITY_LEVEL : level;
    FUNC1(c, "OK");
    return;
}