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
struct ServiceVersionInfo {struct ServiceVersionInfo* name; struct ServiceVersionInfo* next; struct ServiceVersionInfo* fallback; struct ServiceVersionInfo* value; struct ServiceVersionInfo* versioninfo; struct ServiceVersionInfo* service; struct ServiceVersionInfo* regex; struct ServiceVersionInfo* match; int /*<<< orphan*/  sslports; int /*<<< orphan*/  ports; struct ServiceVersionInfo* hellostring; } ;
struct ServiceProbeMatch {struct ServiceProbeMatch* name; struct ServiceProbeMatch* next; struct ServiceProbeMatch* fallback; struct ServiceProbeMatch* value; struct ServiceProbeMatch* versioninfo; struct ServiceProbeMatch* service; struct ServiceProbeMatch* regex; struct ServiceProbeMatch* match; int /*<<< orphan*/  sslports; int /*<<< orphan*/  ports; struct ServiceProbeMatch* hellostring; } ;
struct ServiceProbeFallback {struct ServiceProbeFallback* name; struct ServiceProbeFallback* next; struct ServiceProbeFallback* fallback; struct ServiceProbeFallback* value; struct ServiceProbeFallback* versioninfo; struct ServiceProbeFallback* service; struct ServiceProbeFallback* regex; struct ServiceProbeFallback* match; int /*<<< orphan*/  sslports; int /*<<< orphan*/  ports; struct ServiceProbeFallback* hellostring; } ;
struct NmapServiceProbe {struct NmapServiceProbe* name; struct NmapServiceProbe* next; struct NmapServiceProbe* fallback; struct NmapServiceProbe* value; struct NmapServiceProbe* versioninfo; struct NmapServiceProbe* service; struct NmapServiceProbe* regex; struct NmapServiceProbe* match; int /*<<< orphan*/  sslports; int /*<<< orphan*/  ports; struct NmapServiceProbe* hellostring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ServiceVersionInfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct NmapServiceProbe *probe)
{
    if (probe->name)
        FUNC0(probe->name);
    if (probe->hellostring)
        FUNC0(probe->hellostring);
    FUNC1(&probe->ports);
    FUNC1(&probe->sslports);
    while (probe->match) {
        struct ServiceProbeMatch *match = probe->match;
        probe->match = match->next;
        FUNC0(match->regex);
        FUNC0(match->service);
        while (match->versioninfo) {
            struct ServiceVersionInfo *v = match->versioninfo;
            match->versioninfo = v->next;
            if (v->value)
                FUNC0(v->value);
            FUNC0(v);
        }
        FUNC0(match);
    }
    while (probe->fallback) {
        struct ServiceProbeFallback *fallback;
        
        fallback = probe->fallback;
        probe->fallback = fallback->next;
        if (fallback->name)
            FUNC0(fallback->name);
        FUNC0(fallback);
    }

    FUNC0(probe);
}