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
struct bluray_priv_s {int /*<<< orphan*/  bd; } ;
struct TYPE_4__ {struct bluray_priv_s* priv; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  BD_EVENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(stream_t *s, void *buf, int len)
{
    struct bluray_priv_s *b = s->priv;
    BD_EVENT event;
    while (FUNC0(b->bd, &event))
        FUNC2(s, &event);
    return FUNC1(b->bd, buf, len);
}