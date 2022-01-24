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
struct TYPE_3__ {void* hostname; int /*<<< orphan*/  hash_hostname; } ;
typedef  TYPE_1__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*) ; 
 void* FUNC3 (char const*) ; 

__attribute__((used)) static inline void FUNC4(RRDHOST *host, const char *hostname) {
    if(host->hostname && hostname && !FUNC2(host->hostname, hostname))
        return;

    void *old = host->hostname;
    host->hostname = FUNC3(hostname?hostname:"localhost");
    host->hash_hostname = FUNC1(host->hostname);
    FUNC0(old);
}