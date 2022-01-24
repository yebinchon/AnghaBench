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
struct priv {scalar_t__* streams; int /*<<< orphan*/  slave; int /*<<< orphan*/  num_streams; } ;
struct TYPE_3__ {struct priv* priv; } ;
typedef  TYPE_1__ demuxer_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_NOPTS_VALUE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(demuxer_t *demuxer)
{
    struct priv *p = demuxer->priv;
    int num_slave = FUNC1(p->slave);
    for (int n = 0; n < FUNC0(num_slave, p->num_streams); n++) {
        if (p->streams[n]) {
            FUNC4(p->slave, FUNC2(p->slave, n),
                MP_NOPTS_VALUE, FUNC3(p->streams[n]));
        }
    }
}