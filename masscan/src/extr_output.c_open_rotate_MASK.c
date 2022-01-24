#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int fd; scalar_t__ port; int /*<<< orphan*/  ip; } ;
struct Output {unsigned int is_append; scalar_t__ format; int is_virgin_file; TYPE_3__* funcs; TYPE_2__ redis; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int ptrdiff_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* open ) (struct Output*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  SOCKET ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ Output_Redis ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short) ; 
 int is_tx_done ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ **,char const*,unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC9 (struct Output*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static FILE *
FUNC10(struct Output *out, const char *filename)
{
    FILE *fp = 0;
    unsigned is_append = out->is_append;
    int x;

    /*
     * KLUDGE: do something special for redis
     */
    if (out->format == Output_Redis) {
        ptrdiff_t fd = out->redis.fd;
        if (fd < 1) {
            struct sockaddr_in sin = {0};
            fd = (ptrdiff_t)FUNC8(AF_INET, SOCK_STREAM, 0);
            if (fd == -1) {
                FUNC0(0, "redis: socket() failed to create socket\n");
                FUNC2(1);
            }
            sin.sin_addr.s_addr = FUNC4(out->redis.ip);
            sin.sin_port = FUNC5((unsigned short)out->redis.port);
            sin.sin_family = AF_INET;
            x = FUNC1((SOCKET)fd, (struct sockaddr*)&sin, sizeof(sin));
            if (x != 0) {
                FUNC0(0, "redis: connect() failed\n");
                FUNC6("connect");
            }
            out->redis.fd = fd;
        }
        out->funcs->open(out, (FILE*)fd);

        return (FILE*)fd;
    }

    /* Do something special for the "-" filename */
    if (filename[0] == '-' && filename[1] == '\0')
        fp = stdout;

    /* open a "shareable" file. On Windows, by default files can't be renamed
     * while they are open, so we need a special function that takes care
     * of this. */
    if (fp == 0) {
        x = FUNC7(&fp, filename, is_append);
        if (x != 0 || fp == NULL) {
            FUNC3(stderr, "out: could not open file for %s\n",
                    is_append?"appending":"writing");
            FUNC6(filename);
            is_tx_done = 1;
            return NULL;
        }
    }

    /*
     * Mark the file as newly opened. That way, before writing any data
     * to it, we'll first have to write headers
     */
    out->is_virgin_file = 1;

    return fp;
}