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
struct symt_compiland {int dummy; } ;
struct msc_debug_info {int /*<<< orphan*/  module; } ;
struct location {unsigned int offset; scalar_t__ reg; int /*<<< orphan*/  kind; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned int FUNC0 (struct msc_debug_info const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loc_absolute ; 
 int /*<<< orphan*/  loc_tlsrel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct symt_compiland*,char const*,scalar_t__,struct location,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(const struct msc_debug_info* msc_dbg,
                                         struct symt_compiland* compiland,
                                         const char* name,
                                         unsigned segment, unsigned offset,
                                         unsigned symtype, BOOL is_local, BOOL in_tls, BOOL force)
{
    if (name && *name)
    {
        struct location loc;

        loc.kind = in_tls ? loc_tlsrel : loc_absolute;
        loc.reg = 0;
        loc.offset = in_tls ? offset : FUNC0(msc_dbg, segment, offset);
        if (force || in_tls || !FUNC2(msc_dbg->module, loc.offset))
        {
            FUNC3(msc_dbg->module, compiland,
                                     name, is_local, loc, 0,
                                     FUNC1(symtype, FALSE));
        }
    }
}