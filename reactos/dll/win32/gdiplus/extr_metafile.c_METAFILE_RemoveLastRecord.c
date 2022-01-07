
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Size; } ;
struct TYPE_5__ {int comment_data_length; int * comment_data; } ;
typedef TYPE_1__ GpMetafile ;
typedef TYPE_2__ EmfPlusRecordHeader ;
typedef int BYTE ;


 int assert (int) ;

__attribute__((used)) static void METAFILE_RemoveLastRecord(GpMetafile *metafile, EmfPlusRecordHeader *record)
{
    assert(metafile->comment_data + metafile->comment_data_length == (BYTE*)record + record->Size);
    metafile->comment_data_length -= record->Size;
}
