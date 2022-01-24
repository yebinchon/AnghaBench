#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; } ;
typedef  TYPE_1__ strbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static strbuf *
FUNC4(strbuf *sb, int len) {
    int size;
    for (size = 128; size < len; size += size)
        ;
    if (sb == 0) {
        sb = (strbuf *) FUNC2(sizeof(*sb) + size);
    }
    else {
        sb = (strbuf *) FUNC3(sb, sizeof(*sb) + size);
        if (sb == 0) {
            FUNC1("C CGI Library out of memory\n", stderr);
            FUNC0(1);
        }
    }
    sb->size = size;
    return sb;
}