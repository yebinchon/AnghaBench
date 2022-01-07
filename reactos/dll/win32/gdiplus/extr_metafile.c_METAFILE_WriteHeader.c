
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Flags; int Type; } ;
struct TYPE_9__ {int EmfPlusFlags; scalar_t__ LogicalDpiY; scalar_t__ LogicalDpiX; int Version; TYPE_1__ Header; } ;
struct TYPE_8__ {scalar_t__ metafile_type; } ;
typedef int HDC ;
typedef int GpStatus ;
typedef TYPE_2__ GpMetafile ;
typedef TYPE_3__ EmfPlusHeader ;


 scalar_t__ DT_RASDISPLAY ;
 int EmfPlusRecordTypeHeader ;
 scalar_t__ GetDeviceCaps (int ,int ) ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 int METAFILE_AllocateRecord (TYPE_2__*,int,void**) ;
 int METAFILE_WriteRecords (TYPE_2__*) ;
 scalar_t__ MetafileTypeEmfPlusDual ;
 scalar_t__ MetafileTypeEmfPlusOnly ;
 int Ok ;
 int TECHNOLOGY ;
 int VERSION_MAGIC2 ;

__attribute__((used)) static GpStatus METAFILE_WriteHeader(GpMetafile *metafile, HDC hdc)
{
    GpStatus stat;

    if (metafile->metafile_type == MetafileTypeEmfPlusOnly || metafile->metafile_type == MetafileTypeEmfPlusDual)
    {
        EmfPlusHeader *header;

        stat = METAFILE_AllocateRecord(metafile, sizeof(EmfPlusHeader), (void**)&header);
        if (stat != Ok)
            return stat;

        header->Header.Type = EmfPlusRecordTypeHeader;

        if (metafile->metafile_type == MetafileTypeEmfPlusDual)
            header->Header.Flags = 1;
        else
            header->Header.Flags = 0;

        header->Version = VERSION_MAGIC2;

        if (GetDeviceCaps(hdc, TECHNOLOGY) == DT_RASDISPLAY)
            header->EmfPlusFlags = 1;
        else
            header->EmfPlusFlags = 0;

        header->LogicalDpiX = GetDeviceCaps(hdc, LOGPIXELSX);
        header->LogicalDpiY = GetDeviceCaps(hdc, LOGPIXELSY);

        METAFILE_WriteRecords(metafile);
    }

    return Ok;
}
