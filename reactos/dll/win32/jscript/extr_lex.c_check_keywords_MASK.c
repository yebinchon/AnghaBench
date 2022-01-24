#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  implicit_nl_semicolon; int /*<<< orphan*/  ptr; TYPE_1__* script; } ;
typedef  TYPE_2__ parser_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {scalar_t__ min_version; int token; int /*<<< orphan*/  no_nl; int /*<<< orphan*/  word; } ;
struct TYPE_7__ {scalar_t__ version; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* keywords ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(parser_ctx_t *ctx, const WCHAR **lval)
{
    int min = 0, max = FUNC0(keywords)-1, r, i;

    while(min <= max) {
        i = (min+max)/2;

        r = FUNC2(ctx, keywords[i].word, lval);
        if(!r) {
            if(ctx->script->version < keywords[i].min_version) {
                FUNC1("ignoring keyword %s in incompatible mode\n",
                      FUNC3(keywords[i].word));
                ctx->ptr -= FUNC4(keywords[i].word);
                return 0;
            }
            ctx->implicit_nl_semicolon = keywords[i].no_nl;
            return keywords[i].token;
        }

        if(r > 0)
            min = i+1;
        else
            max = i-1;
    }

    return 0;
}