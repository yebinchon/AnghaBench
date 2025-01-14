
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ServiceVersionInfo {struct ServiceVersionInfo* name; struct ServiceVersionInfo* next; struct ServiceVersionInfo* fallback; struct ServiceVersionInfo* value; struct ServiceVersionInfo* versioninfo; struct ServiceVersionInfo* service; struct ServiceVersionInfo* regex; struct ServiceVersionInfo* match; int sslports; int ports; struct ServiceVersionInfo* hellostring; } ;
struct ServiceProbeMatch {struct ServiceProbeMatch* name; struct ServiceProbeMatch* next; struct ServiceProbeMatch* fallback; struct ServiceProbeMatch* value; struct ServiceProbeMatch* versioninfo; struct ServiceProbeMatch* service; struct ServiceProbeMatch* regex; struct ServiceProbeMatch* match; int sslports; int ports; struct ServiceProbeMatch* hellostring; } ;
struct ServiceProbeFallback {struct ServiceProbeFallback* name; struct ServiceProbeFallback* next; struct ServiceProbeFallback* fallback; struct ServiceProbeFallback* value; struct ServiceProbeFallback* versioninfo; struct ServiceProbeFallback* service; struct ServiceProbeFallback* regex; struct ServiceProbeFallback* match; int sslports; int ports; struct ServiceProbeFallback* hellostring; } ;
struct NmapServiceProbe {struct NmapServiceProbe* name; struct NmapServiceProbe* next; struct NmapServiceProbe* fallback; struct NmapServiceProbe* value; struct NmapServiceProbe* versioninfo; struct NmapServiceProbe* service; struct NmapServiceProbe* regex; struct NmapServiceProbe* match; int sslports; int ports; struct NmapServiceProbe* hellostring; } ;


 int free (struct ServiceVersionInfo*) ;
 int rangelist_remove_all (int *) ;

__attribute__((used)) static void
nmapserviceprobes_free_record(struct NmapServiceProbe *probe)
{
    if (probe->name)
        free(probe->name);
    if (probe->hellostring)
        free(probe->hellostring);
    rangelist_remove_all(&probe->ports);
    rangelist_remove_all(&probe->sslports);
    while (probe->match) {
        struct ServiceProbeMatch *match = probe->match;
        probe->match = match->next;
        free(match->regex);
        free(match->service);
        while (match->versioninfo) {
            struct ServiceVersionInfo *v = match->versioninfo;
            match->versioninfo = v->next;
            if (v->value)
                free(v->value);
            free(v);
        }
        free(match);
    }
    while (probe->fallback) {
        struct ServiceProbeFallback *fallback;

        fallback = probe->fallback;
        probe->fallback = fallback->next;
        if (fallback->name)
            free(fallback->name);
        free(fallback);
    }

    free(probe);
}
