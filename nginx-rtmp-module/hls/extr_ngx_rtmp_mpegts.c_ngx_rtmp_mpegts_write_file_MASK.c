#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/ * buf; int /*<<< orphan*/  fd; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; int /*<<< orphan*/  log; int /*<<< orphan*/  encrypt; } ;
typedef  TYPE_1__ ngx_rtmp_mpegts_file_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_rtmp_mpegts_file_t *file, u_char *in,
    size_t in_size)
{
    u_char   *out;
    size_t    out_size, n;
    ssize_t   rc;

    static u_char  buf[1024];

    if (!file->encrypt) {
        FUNC1(NGX_LOG_DEBUG_CORE, file->log, 0,
                       "mpegts: write %uz bytes", in_size);

        rc = FUNC3(file->fd, in, in_size);
        if (rc < 0) {
            return NGX_ERROR;
        }

        return NGX_OK;
    }

    /* encrypt */

    FUNC1(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "mpegts: write %uz encrypted bytes", in_size);

    out = buf;
    out_size = sizeof(buf);

    if (file->size > 0 && file->size + in_size >= 16) {
        FUNC2(file->buf + file->size, in, 16 - file->size);

        in += 16 - file->size;
        in_size -= 16 - file->size;

        FUNC0(file->buf, out, 16, &file->key, file->iv, AES_ENCRYPT);

        out += 16;
        out_size -= 16;

        file->size = 0;
    }

    for ( ;; ) {
        n = in_size & ~0x0f;

        if (n > 0) {
            if (n > out_size) {
                n = out_size;
            }

            FUNC0(in, out, n, &file->key, file->iv, AES_ENCRYPT);

            in += n;
            in_size -= n;

        } else if (out == buf) {
            break;
        }

        rc = FUNC3(file->fd, buf, out - buf + n);
        if (rc < 0) {
            return NGX_ERROR;
        }

        out = buf;
        out_size = sizeof(buf);
    }

    if (in_size) {
        FUNC2(file->buf + file->size, in, in_size);
        file->size += in_size;
    }

    return NGX_OK;
}