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
struct TYPE_6__ {long len; } ;
struct TYPE_5__ {unsigned int dropepoch; int droprec; int duprec; int /*<<< orphan*/  pkts; } ;
typedef  TYPE_1__ MEMPACKET_TEST_CTX ;
typedef  TYPE_2__ MEMPACKET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BIO_CTRL_DUP 141 
#define  BIO_CTRL_EOF 140 
#define  BIO_CTRL_FLUSH 139 
#define  BIO_CTRL_GET_CLOSE 138 
#define  BIO_CTRL_PENDING 137 
#define  BIO_CTRL_POP 136 
#define  BIO_CTRL_PUSH 135 
#define  BIO_CTRL_RESET 134 
#define  BIO_CTRL_SET_CLOSE 133 
#define  BIO_CTRL_WPENDING 132 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
#define  MEMPACKET_CTRL_GET_DROP_REC 131 
#define  MEMPACKET_CTRL_SET_DROP_EPOCH 130 
#define  MEMPACKET_CTRL_SET_DROP_REC 129 
#define  MEMPACKET_CTRL_SET_DUPLICATE_REC 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC5(BIO *bio, int cmd, long num, void *ptr)
{
    long ret = 1;
    MEMPACKET_TEST_CTX *ctx = FUNC0(bio);
    MEMPACKET *thispkt;

    switch (cmd) {
    case BIO_CTRL_EOF:
        ret = (long)(FUNC3(ctx->pkts) == 0);
        break;
    case BIO_CTRL_GET_CLOSE:
        ret = FUNC1(bio);
        break;
    case BIO_CTRL_SET_CLOSE:
        FUNC2(bio, (int)num);
        break;
    case BIO_CTRL_WPENDING:
        ret = 0L;
        break;
    case BIO_CTRL_PENDING:
        thispkt = FUNC4(ctx->pkts, 0);
        if (thispkt == NULL)
            ret = 0;
        else
            ret = thispkt->len;
        break;
    case BIO_CTRL_FLUSH:
        ret = 1;
        break;
    case MEMPACKET_CTRL_SET_DROP_EPOCH:
        ctx->dropepoch = (unsigned int)num;
        break;
    case MEMPACKET_CTRL_SET_DROP_REC:
        ctx->droprec = (int)num;
        break;
    case MEMPACKET_CTRL_GET_DROP_REC:
        ret = ctx->droprec;
        break;
    case MEMPACKET_CTRL_SET_DUPLICATE_REC:
        ctx->duprec = (int)num;
        break;
    case BIO_CTRL_RESET:
    case BIO_CTRL_DUP:
    case BIO_CTRL_PUSH:
    case BIO_CTRL_POP:
    default:
        ret = 0;
        break;
    }
    return ret;
}