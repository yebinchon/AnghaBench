
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next_object_id; } ;
typedef TYPE_1__ GpMetafile ;
typedef int DWORD ;


 int EmfPlusObjectTableSize ;

__attribute__((used)) static DWORD METAFILE_AddObjectId(GpMetafile *metafile)
{
    return (metafile->next_object_id++) % EmfPlusObjectTableSize;
}
