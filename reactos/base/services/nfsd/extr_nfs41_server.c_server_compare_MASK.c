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
struct server_info {int /*<<< orphan*/  owner; int /*<<< orphan*/  scope; } ;
struct list_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  scope; } ;
typedef  TYPE_1__ nfs41_server ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_OPAQUE_LIMIT ; 
 TYPE_1__* FUNC0 (struct list_entry const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
    const struct list_entry *entry,
    const void *value)
{
    const nfs41_server *server = FUNC0(entry);
    const struct server_info *info = (const struct server_info*)value;
    const int diff = FUNC1(server->scope, info->scope, NFS4_OPAQUE_LIMIT);
    return diff ? diff : FUNC1(server->owner, info->owner, NFS4_OPAQUE_LIMIT);
}