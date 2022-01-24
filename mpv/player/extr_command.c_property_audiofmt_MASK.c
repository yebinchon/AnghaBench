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
struct mp_chmap {int /*<<< orphan*/  num; int /*<<< orphan*/  member_0; } ;
struct mp_aframe {int dummy; } ;
struct m_sub_property {char* member_0; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct m_sub_property*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_aframe*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_chmap*) ; 

__attribute__((used)) static int FUNC10(struct mp_aframe *fmt, int action, void *arg)
{
    if (!fmt || !FUNC4(fmt))
        return M_PROPERTY_UNAVAILABLE;

    struct mp_chmap chmap = {0};
    FUNC5(fmt, &chmap);

    struct m_sub_property props[] = {
        {"samplerate",      FUNC0(FUNC7(fmt))},
        {"channel-count",   FUNC0(chmap.num)},
        {"channels",        FUNC1(FUNC8(&chmap))},
        {"hr-channels",     FUNC1(FUNC9(&chmap))},
        {"format",          FUNC1(FUNC2(FUNC6(fmt)))},
        {0}
    };

    return FUNC3(props, action, arg);
}