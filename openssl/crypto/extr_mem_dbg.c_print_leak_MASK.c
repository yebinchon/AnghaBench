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
struct tm {char* tm_hour; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {char* order; size_t array_siz; int /*<<< orphan*/  array; int /*<<< orphan*/  num; int /*<<< orphan*/  addr; int /*<<< orphan*/  threadid; int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  time; } ;
struct TYPE_5__ {int /*<<< orphan*/  bytes; int /*<<< orphan*/  chunks; int /*<<< orphan*/  print_cb_arg; int /*<<< orphan*/  (* print_cb ) (char*,size_t,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ MEM_LEAK ;
typedef  TYPE_2__ MEM ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 struct tm* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(const MEM *m, MEM_LEAK *l)
{
    char buf[1024];
    char *bufp = buf, *hex;
    size_t len = sizeof(buf);
    int n;
    struct tm *lcl = NULL;

    lcl = FUNC6(&m->time);
    n = FUNC0(bufp, len, "[%02d:%02d:%02d] ",
                     lcl->tm_hour, lcl->tm_min, lcl->tm_sec);
    if (n <= 0) {
        bufp[0] = '\0';
        return;
    }
    bufp += n;
    len -= n;

    n = FUNC0(bufp, len, "%5lu file=%s, line=%d, ",
                     m->order, m->file, m->line);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    hex = FUNC1((const unsigned char *)&m->threadid,
                             sizeof(m->threadid));
    n = FUNC0(bufp, len, "thread=%s, number=%d, address=%p\n", hex,
                     m->num, m->addr);
    FUNC2(hex);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    l->print_cb(buf, (size_t)(bufp - buf), l->print_cb_arg);
    l->chunks++;
    l->bytes += m->num;

#ifndef OPENSSL_NO_CRYPTO_MDEBUG_BACKTRACE
    {
        size_t i;
        char **strings = FUNC3(m->array, m->array_siz);

        for (i = 0; i < m->array_siz; i++)
            FUNC4(stderr, "##> %s\n", strings[i]);
        FUNC5(strings);
    }
#endif
}