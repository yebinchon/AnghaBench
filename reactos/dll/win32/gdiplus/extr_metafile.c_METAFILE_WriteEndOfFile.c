
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Flags; int Type; } ;
struct TYPE_6__ {scalar_t__ metafile_type; } ;
typedef int GpStatus ;
typedef TYPE_1__ GpMetafile ;
typedef TYPE_2__ EmfPlusRecordHeader ;


 int EmfPlusRecordTypeEndOfFile ;
 int METAFILE_AllocateRecord (TYPE_1__*,int,void**) ;
 int METAFILE_WriteRecords (TYPE_1__*) ;
 scalar_t__ MetafileTypeEmfPlusDual ;
 scalar_t__ MetafileTypeEmfPlusOnly ;
 int Ok ;

__attribute__((used)) static GpStatus METAFILE_WriteEndOfFile(GpMetafile *metafile)
{
    GpStatus stat;

    if (metafile->metafile_type == MetafileTypeEmfPlusOnly || metafile->metafile_type == MetafileTypeEmfPlusDual)
    {
        EmfPlusRecordHeader *record;

        stat = METAFILE_AllocateRecord(metafile, sizeof(EmfPlusRecordHeader), (void**)&record);
        if (stat != Ok)
            return stat;

        record->Type = EmfPlusRecordTypeEndOfFile;
        record->Flags = 0;

        METAFILE_WriteRecords(metafile);
    }

    return Ok;
}
