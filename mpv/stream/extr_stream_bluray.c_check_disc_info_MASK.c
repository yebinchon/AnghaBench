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
struct bluray_priv_s {int /*<<< orphan*/  bd; } ;
struct TYPE_6__ {struct bluray_priv_s* priv; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  bdplus_handled; int /*<<< orphan*/  libbdplus_detected; scalar_t__ bdplus_detected; int /*<<< orphan*/  aacs_error_code; int /*<<< orphan*/  aacs_handled; int /*<<< orphan*/  libaacs_detected; scalar_t__ aacs_detected; int /*<<< orphan*/  bluray_detected; } ;
typedef  TYPE_2__ BLURAY_DISC_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(stream_t *s)
{
    struct bluray_priv_s *b = s->priv;
    const BLURAY_DISC_INFO *info = FUNC2(b->bd);

    // check Blu-ray
    if (!info->bluray_detected) {
        FUNC0(s, "Given stream is not a Blu-ray.\n");
        return false;
    }

    // check AACS
    if (info->aacs_detected) {
        if (!info->libaacs_detected) {
            FUNC0(s, "AACS encryption detected but cannot find libaacs.\n");
            return false;
        }
        if (!info->aacs_handled) {
            FUNC0(s, "AACS error: %s\n", FUNC1(info->aacs_error_code));
            return false;
        }
    }

    // check BD+
    if (info->bdplus_detected) {
        if (!info->libbdplus_detected) {
            FUNC0(s, "BD+ encryption detected but cannot find libbdplus.\n");
            return false;
        }
        if (!info->bdplus_handled) {
            FUNC0(s, "Cannot decrypt BD+ encryption.\n");
            return false;
        }
    }

    return true;
}