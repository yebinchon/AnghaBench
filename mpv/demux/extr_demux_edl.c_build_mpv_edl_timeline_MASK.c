#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tl_root {int num_pars; struct tl_parts** pars; } ;
struct tl_parts {int dummy; } ;
struct timeline_par {int dash; int no_clip; int num_parts; } ;
struct timeline {char* format; TYPE_1__* demuxer; } ;
struct priv {int /*<<< orphan*/  allow_any; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  filename; struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeline*,char*) ; 
 struct timeline_par* FUNC1 (struct timeline*,struct tl_parts*) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_parts*,int /*<<< orphan*/ ) ; 
 struct tl_root* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tl_root*) ; 

__attribute__((used)) static void FUNC5(struct timeline *tl)
{
    struct priv *p = tl->demuxer->priv;

    struct tl_root *root = FUNC3(p->data);
    if (!root) {
        FUNC0(tl, "Error in EDL.\n");
        return;
    }

    bool all_dash = true;
    bool all_no_clip = true;
    bool all_single = true;

    for (int n = 0; n < root->num_pars; n++) {
        struct tl_parts *parts = root->pars[n];
        if (!p->allow_any)
            FUNC2(parts, tl->demuxer->filename);
        struct timeline_par *par = FUNC1(tl, parts);
        if (!par)
            break;
        all_dash &= par->dash;
        all_no_clip &= par->no_clip;
        all_single &= par->num_parts == 1;
    }

    if (all_dash) {
        tl->format = "dash";
    } else if (all_no_clip && all_single) {
        tl->format = "multi";
    } else {
        tl->format = "edl";
    }

    FUNC4(root);
}