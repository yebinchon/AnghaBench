#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dtv_properties {int num; TYPE_2__* props; } ;
typedef  int /*<<< orphan*/  dvb_priv_t ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ u; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_SET_PROPERTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct dtv_properties*) ; 

__attribute__((used)) static int FUNC4(dvb_priv_t *priv, int fd_frontend,
                       unsigned int delsys, struct dtv_properties* cmdseq)
{
    FUNC1(priv, "Tuning via S2API, channel is %s.\n",
               FUNC2(delsys));
    FUNC1(priv, "Dumping raw tuning commands and values:\n");
    for (int i = 0; i < cmdseq->num; ++i) {
        FUNC1(priv, "%02d: 0x%x(%d) => 0x%x(%d)\n",
                   i, cmdseq->props[i].cmd, cmdseq->props[i].cmd,
                   cmdseq->props[i].u.data, cmdseq->props[i].u.data);
    }
    if (FUNC3(fd_frontend, FE_SET_PROPERTY, cmdseq) < 0) {
        FUNC0(priv, "ERROR tuning channel\n");
        return -1;
    }
    return 0;
}