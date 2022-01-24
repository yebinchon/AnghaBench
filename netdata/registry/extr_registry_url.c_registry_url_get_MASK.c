#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint16_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_9__ {size_t max_url_length; int urls_memory; int /*<<< orphan*/  urls_count; int /*<<< orphan*/  registry_urls_root_index; } ;
struct TYPE_8__ {char* url; void* hash; scalar_t__ links; void* len; } ;
typedef  TYPE_1__ REGISTRY_URL ;

/* Variables and functions */
 int /*<<< orphan*/  D_REGISTRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_5__ registry ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,void*) ; 

REGISTRY_URL *FUNC8(const char *url, size_t urllen) {
    // protection from too big URLs
    if(urllen > registry.max_url_length)
        urllen = registry.max_url_length;

    FUNC2(D_REGISTRY, "Registry: registry_url_get('%s', %zu)", url, urllen);

    char buf[sizeof(REGISTRY_URL) + urllen]; // no need for +1, 1 is already in REGISTRY_URL
    REGISTRY_URL *n = (REGISTRY_URL *)&buf[0];
    n->len = (uint16_t)urllen;
    FUNC7(n->url, url, n->len);
    n->hash = FUNC6(n->url);

    REGISTRY_URL *u = (REGISTRY_URL *)FUNC0(&(registry.registry_urls_root_index), (avl *)n);
    if(!u) {
        FUNC2(D_REGISTRY, "Registry: registry_url_get('%s', %zu): allocating %zu bytes", url, urllen, sizeof(REGISTRY_URL) + urllen);
        u = FUNC1(1, sizeof(REGISTRY_URL) + urllen); // no need for +1, 1 is already in REGISTRY_URL

        // a simple strcpy() should do the job
        // but I prefer to be safe, since the caller specified urllen
        u->len = (uint16_t)urllen;
        FUNC7(u->url, url, u->len);
        u->links = 0;
        u->hash = FUNC6(u->url);

        registry.urls_memory += sizeof(REGISTRY_URL) + urllen; // no need for +1, 1 is already in REGISTRY_URL

        FUNC2(D_REGISTRY, "Registry: registry_url_get('%s'): indexing it", url);
        n = FUNC5(u);
        if(n != u) {
            FUNC3("INTERNAL ERROR: registry_url_get(): url '%s' already exists in the registry as '%s'", u->url, n->url);
            FUNC4(u);
            u = n;
        }
        else
            registry.urls_count++;
    }

    return u;
}