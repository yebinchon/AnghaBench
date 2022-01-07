
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NmapServiceProbeList {char const* filename; } ;


 struct NmapServiceProbeList* CALLOC (int,int) ;

__attribute__((used)) static struct NmapServiceProbeList *
nmapserviceprobes_new(const char *filename)
{
    struct NmapServiceProbeList *result;

    result = CALLOC(1, sizeof(*result));
    result->filename = filename;

    return result;
}
