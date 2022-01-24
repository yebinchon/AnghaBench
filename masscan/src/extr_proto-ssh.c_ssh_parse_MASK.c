#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ProtocolState {unsigned int state; } ;
typedef  void const InteractiveData ;
struct BannerOutput {int dummy; } ;
typedef  void Banner1 ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_SSH2 ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*,int /*<<< orphan*/ ,unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC3 (void const*) ; 

__attribute__((used)) static void
FUNC4(  const struct Banner1 *banner1,
        void *banner1_private,
        struct ProtocolState *pstate,
        const unsigned char *px, size_t length,
        struct BannerOutput *banout,
        struct InteractiveData *more)
{
    unsigned state = pstate->state;
    unsigned i;

    FUNC0(banner1_private);
    FUNC0(banner1);
    FUNC0(more);

    for (i=0; i<length; i++)
    switch (state) {
    case 0:
        if (px[i] == '\r')
            continue;
        if (px[i] == '\n' || px[i] == '\0' || !FUNC2(px[i])) {
            state++;
            FUNC3(more);
            continue;
        }
        FUNC1(banout, PROTO_SSH2, px[i]);
        break;
    default:
        i = (unsigned)length;
        break;
    }
    pstate->state = state;
}