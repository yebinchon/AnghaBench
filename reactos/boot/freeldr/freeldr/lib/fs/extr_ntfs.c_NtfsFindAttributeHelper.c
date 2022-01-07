
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_11__ {int Record; } ;
struct TYPE_10__ {scalar_t__ Type; scalar_t__ NameLength; scalar_t__ NameOffset; scalar_t__ Length; } ;
typedef scalar_t__ PWCHAR ;
typedef int * PVOID ;
typedef int PNTFS_VOLUME_INFO ;
typedef TYPE_1__* PNTFS_ATTR_RECORD ;
typedef TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef scalar_t__ PCHAR ;


 int * FrLdrTempAlloc (scalar_t__,int ) ;
 int FrLdrTempFree (int *,int ) ;
 scalar_t__ NTFS_ATTR_TYPE_ATTRIBUTE_LIST ;
 scalar_t__ NTFS_ATTR_TYPE_END ;
 int NtfsGetAttributeSize (int *) ;
 TYPE_2__* NtfsPrepareAttributeContext (TYPE_1__*) ;
 int NtfsReadAttribute (int ,TYPE_2__*,int ,int *,scalar_t__) ;
 int NtfsReleaseAttributeContext (TYPE_2__*) ;
 scalar_t__ RtlEqualMemory (scalar_t__,int const*,scalar_t__) ;
 int TAG_NTFS_LIST ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static PNTFS_ATTR_CONTEXT NtfsFindAttributeHelper(PNTFS_VOLUME_INFO Volume, PNTFS_ATTR_RECORD AttrRecord, PNTFS_ATTR_RECORD AttrRecordEnd, ULONG Type, const WCHAR *Name, ULONG NameLength)
{
    while (AttrRecord < AttrRecordEnd)
    {
        if (AttrRecord->Type == NTFS_ATTR_TYPE_END)
            break;

        if (AttrRecord->Type == NTFS_ATTR_TYPE_ATTRIBUTE_LIST)
        {
            PNTFS_ATTR_CONTEXT Context;
            PNTFS_ATTR_CONTEXT ListContext;
            PVOID ListBuffer;
            ULONGLONG ListSize;
            PNTFS_ATTR_RECORD ListAttrRecord;
            PNTFS_ATTR_RECORD ListAttrRecordEnd;

            ListContext = NtfsPrepareAttributeContext(AttrRecord);

            ListSize = NtfsGetAttributeSize(&ListContext->Record);
            if(ListSize <= 0xFFFFFFFF)
                ListBuffer = FrLdrTempAlloc((ULONG)ListSize, TAG_NTFS_LIST);
            else
                ListBuffer = ((void*)0);

            if(!ListBuffer)
            {
                TRACE("Failed to allocate memory: %x\n", (ULONG)ListSize);
                continue;
            }

            ListAttrRecord = (PNTFS_ATTR_RECORD)ListBuffer;
            ListAttrRecordEnd = (PNTFS_ATTR_RECORD)((PCHAR)ListBuffer + ListSize);

            if (NtfsReadAttribute(Volume, ListContext, 0, ListBuffer, (ULONG)ListSize) == ListSize)
            {
                Context = NtfsFindAttributeHelper(Volume, ListAttrRecord, ListAttrRecordEnd,
                                                  Type, Name, NameLength);

                NtfsReleaseAttributeContext(ListContext);
                FrLdrTempFree(ListBuffer, TAG_NTFS_LIST);

                if (Context != ((void*)0))
                    return Context;
            }
        }

        if (AttrRecord->Type == Type)
        {
            if (AttrRecord->NameLength == NameLength)
            {
                PWCHAR AttrName;

                AttrName = (PWCHAR)((PCHAR)AttrRecord + AttrRecord->NameOffset);
                if (RtlEqualMemory(AttrName, Name, NameLength << 1))
                {

                    return NtfsPrepareAttributeContext(AttrRecord);
                }
            }
        }

        if (AttrRecord->Length == 0)
            return ((void*)0);
        AttrRecord = (PNTFS_ATTR_RECORD)((PCHAR)AttrRecord + AttrRecord->Length);
    }

    return ((void*)0);
}
