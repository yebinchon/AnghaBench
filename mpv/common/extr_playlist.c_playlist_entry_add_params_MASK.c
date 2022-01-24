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
struct playlist_param {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct playlist_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct playlist_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct playlist_entry *e,
                               struct playlist_param *params,
                               int num_params)
{
    for (int n = 0; n < num_params; n++)
        FUNC0(e, params[n].name, params[n].value);
}