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
struct TYPE_5__ {int eof; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (char*,char,int) ; 
 int FUNC2 (TYPE_1__*,char*,int,int) ; 

__attribute__((used)) static char *FUNC3(stream_t *s, char *mem, int max, int utf16)
{
    if (max < 1)
        return NULL;
    int read = 0;
    while (1) {
        // Reserve 1 byte of ptr for terminating \0.
        int l = FUNC2(s, &mem[read], max - read - 1, utf16);
        if (l < 0 || FUNC1(&mem[read], '\0', l)) {
            FUNC0(s, "error reading line\n");
            s->eof = false;
            return NULL;
        }
        read += l;
        if (l == 0 || (read > 0 && mem[read - 1] == '\n'))
            break;
    }
    mem[read] = '\0';
    if (s->eof && read == 0) // legitimate EOF
        return NULL;
    return mem;
}