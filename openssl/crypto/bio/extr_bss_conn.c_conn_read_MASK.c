#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  num; scalar_t__ ptr; } ;
struct TYPE_8__ {scalar_t__ state; } ;
typedef  TYPE_1__ BIO_CONNECT ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 scalar_t__ BIO_CONN_S_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(BIO *b, char *out, int outl)
{
    int ret = 0;
    BIO_CONNECT *data;

    data = (BIO_CONNECT *)b->ptr;
    if (data->state != BIO_CONN_S_OK) {
        ret = FUNC4(b, data);
        if (ret <= 0)
            return ret;
    }

    if (out != NULL) {
        FUNC3();
        ret = FUNC5(b->num, out, outl);
        FUNC0(b);
        if (ret <= 0) {
            if (FUNC2(ret))
                FUNC1(b);
        }
    }
    return ret;
}