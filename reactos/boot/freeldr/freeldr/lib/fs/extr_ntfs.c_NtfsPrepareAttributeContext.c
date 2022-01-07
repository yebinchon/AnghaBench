
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_9__ {scalar_t__ MappingPairsOffset; } ;
struct TYPE_12__ {TYPE_1__ NonResident; } ;
struct TYPE_11__ {int CacheRunStartLCN; int CacheRunLastLCN; scalar_t__ CacheRunCurrentOffset; int CacheRunLength; scalar_t__ CacheRun; scalar_t__ CacheRunOffset; TYPE_4__ Record; } ;
struct TYPE_10__ {scalar_t__ IsNonResident; scalar_t__ Length; } ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_2__* PNTFS_ATTR_RECORD ;
typedef TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef int LONGLONG ;


 scalar_t__ FIELD_OFFSET (int ,int ) ;
 TYPE_3__* FrLdrTempAlloc (scalar_t__,int ) ;
 int NTFS_ATTR_CONTEXT ;
 scalar_t__ NtfsDecodeRun (scalar_t__,int*,int *) ;
 int Record ;
 int RtlCopyMemory (TYPE_4__*,TYPE_2__*,scalar_t__) ;
 int TAG_NTFS_CONTEXT ;

__attribute__((used)) static PNTFS_ATTR_CONTEXT NtfsPrepareAttributeContext(PNTFS_ATTR_RECORD AttrRecord)
{
    PNTFS_ATTR_CONTEXT Context;

    Context = FrLdrTempAlloc(FIELD_OFFSET(NTFS_ATTR_CONTEXT, Record) + AttrRecord->Length,
                             TAG_NTFS_CONTEXT);
    RtlCopyMemory(&Context->Record, AttrRecord, AttrRecord->Length);
    if (AttrRecord->IsNonResident)
    {
        LONGLONG DataRunOffset;
        ULONGLONG DataRunLength;

        Context->CacheRun = (PUCHAR)&Context->Record + Context->Record.NonResident.MappingPairsOffset;
        Context->CacheRunOffset = 0;
        Context->CacheRun = NtfsDecodeRun(Context->CacheRun, &DataRunOffset, &DataRunLength);
        Context->CacheRunLength = DataRunLength;
        if (DataRunOffset != -1)
        {

            Context->CacheRunStartLCN =
            Context->CacheRunLastLCN = DataRunOffset;
        }
        else
        {

            Context->CacheRunStartLCN = -1;
            Context->CacheRunLastLCN = 0;
        }
        Context->CacheRunCurrentOffset = 0;
    }

    return Context;
}
