
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int objtable; scalar_t__ record_stream; TYPE_1__* record_graphics; int hemf; int preserve_hemf; int record_dc; int comment_data; } ;
struct TYPE_5__ {int busy; int * image; } ;
typedef TYPE_2__ GpMetafile ;


 unsigned int ARRAY_SIZE (int ) ;
 int CloseEnhMetaFile (int ) ;
 int DeleteEnhMetaFile (int ) ;
 int IStream_Release (scalar_t__) ;
 int TRUE ;
 int WARN (char*) ;
 int heap_free (int ) ;
 int metafile_free_object_table_entry (TYPE_2__*,unsigned int) ;

void METAFILE_Free(GpMetafile *metafile)
{
    unsigned int i;

    heap_free(metafile->comment_data);
    DeleteEnhMetaFile(CloseEnhMetaFile(metafile->record_dc));
    if (!metafile->preserve_hemf)
        DeleteEnhMetaFile(metafile->hemf);
    if (metafile->record_graphics)
    {
        WARN("metafile closed while recording\n");

        metafile->record_graphics->image = ((void*)0);
        metafile->record_graphics->busy = TRUE;
    }

    if (metafile->record_stream)
        IStream_Release(metafile->record_stream);

    for (i = 0; i < ARRAY_SIZE(metafile->objtable); i++)
        metafile_free_object_table_entry(metafile, i);
}
