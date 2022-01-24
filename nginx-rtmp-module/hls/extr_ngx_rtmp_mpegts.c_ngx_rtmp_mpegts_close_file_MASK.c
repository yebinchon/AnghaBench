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
struct TYPE_3__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; scalar_t__ buf; scalar_t__ size; scalar_t__ encrypt; } ;
typedef  TYPE_1__ ngx_rtmp_mpegts_file_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  AES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

ngx_int_t
FUNC4(ngx_rtmp_mpegts_file_t *file)
{
    u_char   buf[16];
    ssize_t  rc;

    if (file->encrypt) {
        FUNC2(file->buf + file->size, 16 - file->size, 16 - file->size);

        FUNC0(file->buf, buf, 16, &file->key, file->iv, AES_ENCRYPT);

        rc = FUNC3(file->fd, buf, 16);
        if (rc < 0) {
            return NGX_ERROR;
        }
    }

    FUNC1(file->fd);

    return NGX_OK;
}