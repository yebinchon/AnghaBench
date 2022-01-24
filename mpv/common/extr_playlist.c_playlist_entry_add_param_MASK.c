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
struct playlist_param {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct playlist_entry {int /*<<< orphan*/  num_params; int /*<<< orphan*/  params; } ;
typedef  int /*<<< orphan*/  bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct playlist_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct playlist_param) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist_entry*,int /*<<< orphan*/ ) ; 

void FUNC2(struct playlist_entry *e, bstr name, bstr value)
{
    struct playlist_param p = {FUNC1(e, name), FUNC1(e, value)};
    FUNC0(e, e->params, e->num_params, p);
}