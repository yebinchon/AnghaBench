
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct path_header {int count; int flags; int version; } ;
struct TYPE_7__ {int Count; int * Types; TYPE_1__* Points; } ;
struct TYPE_8__ {TYPE_2__ pathdata; } ;
struct TYPE_6__ {short X; short Y; } ;
typedef TYPE_3__ GpPath ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int FLAGS_INTPATH ;
 int VERSION_MAGIC2 ;
 scalar_t__ is_integer_path (TYPE_3__*) ;
 int memset (int *,int ,int) ;

DWORD write_path_data(GpPath *path, void *data)
{
    struct path_header *header = data;
    BOOL integer_path = is_integer_path(path);
    DWORD i, size;
    BYTE *types;

    size = sizeof(struct path_header) + path->pathdata.Count;
    if (integer_path)
        size += sizeof(short[2]) * path->pathdata.Count;
    else
        size += sizeof(float[2]) * path->pathdata.Count;
    size = (size + 3) & ~3;

    if (!data) return size;

    header->version = VERSION_MAGIC2;
    header->count = path->pathdata.Count;
    header->flags = integer_path ? FLAGS_INTPATH : 0;

    if (integer_path)
    {
        short *points = (short*)(header + 1);
        for (i = 0; i < path->pathdata.Count; i++)
        {
            points[2*i] = path->pathdata.Points[i].X;
            points[2*i + 1] = path->pathdata.Points[i].Y;
        }
        types = (BYTE*)(points + 2*i);
    }
    else
    {
        float *points = (float*)(header + 1);
        for (i = 0; i < path->pathdata.Count; i++)
        {
            points[2*i] = path->pathdata.Points[i].X;
            points[2*i + 1] = path->pathdata.Points[i].Y;
        }
        types = (BYTE*)(points + 2*i);
    }

    for (i=0; i<path->pathdata.Count; i++)
        types[i] = path->pathdata.Types[i];
    memset(types + i, 0, ((path->pathdata.Count + 3) & ~3) - path->pathdata.Count);
    return size;
}
