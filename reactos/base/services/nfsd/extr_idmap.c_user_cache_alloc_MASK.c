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
struct list_entry {int dummy; } ;
struct idmap_user {struct list_entry entry; } ;

/* Variables and functions */
 struct idmap_user* FUNC0 (int,int) ; 

__attribute__((used)) static struct list_entry* FUNC1()
{
    struct idmap_user *user = FUNC0(1, sizeof(struct idmap_user));
    return user == NULL ? NULL : &user->entry;
}