#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bio_chain; struct TYPE_4__* cache_peer_serv; struct TYPE_4__* cache_peer_name; struct TYPE_4__* cache_accepting_serv; struct TYPE_4__* cache_accepting_name; int /*<<< orphan*/  addr_first; struct TYPE_4__* param_serv; struct TYPE_4__* param_addr; } ;
typedef  TYPE_1__ BIO_ACCEPT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(BIO_ACCEPT *a)
{
    if (a == NULL)
        return;
    FUNC2(a->param_addr);
    FUNC2(a->param_serv);
    FUNC0(a->addr_first);
    FUNC2(a->cache_accepting_name);
    FUNC2(a->cache_accepting_serv);
    FUNC2(a->cache_peer_name);
    FUNC2(a->cache_peer_serv);
    FUNC1(a->bio_chain);
    FUNC2(a);
}