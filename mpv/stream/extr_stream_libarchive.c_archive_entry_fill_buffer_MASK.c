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
struct priv {TYPE_2__* mpa; } ;
struct TYPE_6__ {struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  locale_t ;
struct TYPE_7__ {int /*<<< orphan*/  arch; int /*<<< orphan*/  locale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(stream_t *s, void *buffer, int max_len)
{
    struct priv *p = s->priv;
    if (!p->mpa)
        return 0;
    locale_t oldlocale = FUNC5(p->mpa->locale);
    int r = FUNC2(p->mpa->arch, buffer, max_len);
    if (r < 0) {
        FUNC0(s, "%s\n", FUNC1(p->mpa->arch));
        if (FUNC3(p->mpa, r)) {
            FUNC4(p->mpa);
            p->mpa = NULL;
        }
    }
    FUNC5(oldlocale);
    return r;
}