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
struct nn_parse_context {char** argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2 (struct nn_parse_context *ctx) {
    FUNC1 (stderr, "%s: Memory error while parsing command-line",
        ctx->argv[0]);
    FUNC0 ();
}