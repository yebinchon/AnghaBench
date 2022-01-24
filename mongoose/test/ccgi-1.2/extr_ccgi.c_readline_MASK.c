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
typedef  int /*<<< orphan*/  strbuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static strbuf *
FUNC3(strbuf *line, FILE *in) {
    int c, i = 0;

    while ((c = FUNC1(in)) != EOF) {
        line = FUNC2(line, i++, c);
        if (c == '\n') {
            break;
        }
    }
    if (i == 0) {
        if (line != 0) {
            FUNC0(line);
        }
        return 0;
    }
    return FUNC2(line, i, 0);  /* null terminate */
}