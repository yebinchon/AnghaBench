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
struct playlist_entry {int dummy; } ;
struct playlist {int /*<<< orphan*/  current; int /*<<< orphan*/  first; } ;
struct m_property {int dummy; } ;
struct m_option {int min; int /*<<< orphan*/  max; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {struct playlist* playlist; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_RANGE ; 
 int /*<<< orphan*/  CONF_TYPE_INT ; 
 int M_PROPERTY_ERROR ; 
#define  M_PROPERTY_GET 130 
#define  M_PROPERTY_GET_TYPE 129 
 int M_PROPERTY_NOT_IMPLEMENTED ; 
 int M_PROPERTY_OK ; 
#define  M_PROPERTY_SET 128 
 int M_PROPERTY_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist*) ; 
 struct playlist_entry* FUNC2 (struct playlist*,int) ; 
 int FUNC3 (struct playlist*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *ctx, struct m_property *prop,
                                      int action, void *arg, int base)
{
    MPContext *mpctx = ctx;
    struct playlist *pl = mpctx->playlist;
    if (!pl->first)
        return M_PROPERTY_UNAVAILABLE;

    switch (action) {
    case M_PROPERTY_GET: {
        int pos = FUNC3(pl, pl->current);
        if (pos < 0)
            return M_PROPERTY_UNAVAILABLE;
        *(int *)arg = pos + base;
        return M_PROPERTY_OK;
    }
    case M_PROPERTY_SET: {
        int pos = *(int *)arg - base;
        struct playlist_entry *e = FUNC2(pl, pos);
        if (!e)
            return M_PROPERTY_ERROR;
        FUNC0(mpctx, e);
        return M_PROPERTY_OK;
    }
    case M_PROPERTY_GET_TYPE: {
        struct m_option opt = {
            .type = CONF_TYPE_INT,
            .flags = CONF_RANGE,
            .min = base,
            .max = FUNC1(pl) - 1 + base,
        };
        *(struct m_option *)arg = opt;
        return M_PROPERTY_OK;
    }
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}