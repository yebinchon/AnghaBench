#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bio_bio_st {scalar_t__ request; scalar_t__ closed; TYPE_1__* peer; scalar_t__ offset; scalar_t__ len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int init; struct bio_bio_st* ptr; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_BIO_MAKE_PAIR ; 
 int /*<<< orphan*/  BIO_R_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(BIO *bio1, BIO *bio2)
{
    struct bio_bio_st *b1, *b2;

    FUNC2(bio1 != NULL);
    FUNC2(bio2 != NULL);

    b1 = bio1->ptr;
    b2 = bio2->ptr;

    if (b1->peer != NULL || b2->peer != NULL) {
        FUNC0(BIO_F_BIO_MAKE_PAIR, BIO_R_IN_USE);
        return 0;
    }

    if (b1->buf == NULL) {
        b1->buf = FUNC1(b1->size);
        if (b1->buf == NULL) {
            FUNC0(BIO_F_BIO_MAKE_PAIR, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        b1->len = 0;
        b1->offset = 0;
    }

    if (b2->buf == NULL) {
        b2->buf = FUNC1(b2->size);
        if (b2->buf == NULL) {
            FUNC0(BIO_F_BIO_MAKE_PAIR, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        b2->len = 0;
        b2->offset = 0;
    }

    b1->peer = bio2;
    b1->closed = 0;
    b1->request = 0;
    b2->peer = bio1;
    b2->closed = 0;
    b2->request = 0;

    bio1->init = 1;
    bio2->init = 1;

    return 1;
}