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
struct TYPE_7__ {int /*<<< orphan*/  settable_ctx_params; int /*<<< orphan*/  gettable_ctx_params; int /*<<< orphan*/  gettable_params; } ;
struct TYPE_6__ {int verbose; scalar_t__ first; int /*<<< orphan*/  subindent; int /*<<< orphan*/  label; int /*<<< orphan*/  indent; int /*<<< orphan*/  total; } ;
typedef  TYPE_1__ META ;
typedef  TYPE_2__ INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  bio_out ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(META *meta, INFO *info)
{
    switch (meta->verbose) {
    case 1:
        if (!meta->first)
            FUNC0(bio_out, "; ");
        FUNC1(bio_out, info);
        break;
    case 2:
        if (meta->first) {
            if (meta->total > 0)
                FUNC0(bio_out, "\n");
            FUNC0(bio_out, "%*s%ss:", meta->indent, "", meta->label);
        }
        FUNC0(bio_out, " ");
        FUNC1(bio_out, info);
        break;
    case 3:
    default:
        FUNC0(bio_out, "%*s%s ", meta->indent, "", meta->label);
        FUNC1(bio_out, info);
        FUNC0(bio_out, "\n");
        FUNC2("retrievable algorithm parameters",
                          info->gettable_params, meta->subindent);
        FUNC2("retrievable operation parameters",
                          info->gettable_ctx_params, meta->subindent);
        FUNC2("settable operation parameters",
                          info->settable_ctx_params, meta->subindent);
        break;
    }
    meta->first = 0;
}