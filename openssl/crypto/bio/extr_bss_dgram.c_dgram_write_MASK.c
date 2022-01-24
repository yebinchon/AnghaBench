#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  _errno; int /*<<< orphan*/  peer; scalar_t__ connected; } ;
typedef  TYPE_1__ bio_dgram_data ;
struct TYPE_7__ {int /*<<< orphan*/  num; scalar_t__ ptr; } ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC9(BIO *b, const char *in, int inl)
{
    int ret;
    bio_dgram_data *data = (bio_dgram_data *)b->ptr;
    FUNC5();

    if (data->connected)
        ret = FUNC8(b->num, in, inl);
    else {
        int peerlen = FUNC1(&data->peer);

        ret = FUNC7(b->num, in, inl, 0,
                     FUNC0(&data->peer), peerlen);
    }

    FUNC2(b);
    if (ret <= 0) {
        if (FUNC3(ret)) {
            FUNC4(b);
            data->_errno = FUNC6();
        }
    }
    return ret;
}