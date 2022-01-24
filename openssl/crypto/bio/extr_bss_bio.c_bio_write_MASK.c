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
struct bio_bio_st {scalar_t__ len; scalar_t__ size; size_t offset; int /*<<< orphan*/ * buf; scalar_t__ closed; scalar_t__ request; int /*<<< orphan*/ * peer; } ;
struct TYPE_5__ {struct bio_bio_st* ptr; int /*<<< orphan*/  init; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_BIO_WRITE ; 
 int /*<<< orphan*/  BIO_R_BROKEN_PIPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC5(BIO *bio, const char *buf, int num_)
{
    size_t num = num_;
    size_t rest;
    struct bio_bio_st *b;

    FUNC0(bio);

    if (!bio->init || buf == NULL || num == 0)
        return 0;

    b = bio->ptr;
    FUNC3(b != NULL);
    FUNC3(b->peer != NULL);
    FUNC3(b->buf != NULL);

    b->request = 0;
    if (b->closed) {
        /* we already closed */
        FUNC2(BIO_F_BIO_WRITE, BIO_R_BROKEN_PIPE);
        return -1;
    }

    FUNC3(b->len <= b->size);

    if (b->len == b->size) {
        FUNC1(bio); /* buffer is full */
        return -1;
    }

    /* we can write */
    if (num > b->size - b->len)
        num = b->size - b->len;

    /* now write "num" bytes */

    rest = num;

    FUNC3(rest > 0);
    do {                        /* one or two iterations */
        size_t write_offset;
        size_t chunk;

        FUNC3(b->len + rest <= b->size);

        write_offset = b->offset + b->len;
        if (write_offset >= b->size)
            write_offset -= b->size;
        /* b->buf[write_offset] is the first byte we can write to. */

        if (write_offset + rest <= b->size)
            chunk = rest;
        else
            /* wrap around ring buffer */
            chunk = b->size - write_offset;

        FUNC4(b->buf + write_offset, buf, chunk);

        b->len += chunk;

        FUNC3(b->len <= b->size);

        rest -= chunk;
        buf += chunk;
    }
    while (rest);

    return num;
}