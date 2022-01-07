
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
typedef int ULONG ;
struct TYPE_5__ {int CurrentLocale; } ;
struct TYPE_4__ {int Language; scalar_t__ Name; scalar_t__ Type; } ;
typedef int PVOID ;
typedef int NTSTATUS ;
typedef int LPCWSTR ;
typedef TYPE_1__ LDR_RESOURCE_INFO ;
typedef int LCID ;
typedef void IMAGE_RESOURCE_DIRECTORY ;


 int FALSE ;
 int IMAGE_DIRECTORY_ENTRY_RESOURCE ;
 int LANGIDFROMLCID (int ) ;
 int LANG_ENGLISH ;
 int LANG_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 scalar_t__ NT_SUCCESS (int ) ;
 TYPE_3__* NtCurrentTeb () ;
 int NtQueryDefaultLocale (int ,int *) ;
 int PRIMARYLANGID (int ) ;
 void* RtlImageDirectoryEntryToData (int ,int ,int ,int*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_RESOURCE_DATA_NOT_FOUND ;
 int STATUS_RESOURCE_LANG_NOT_FOUND ;
 int STATUS_RESOURCE_NAME_NOT_FOUND ;
 int STATUS_RESOURCE_TYPE_NOT_FOUND ;
 int STATUS_SUCCESS ;
 scalar_t__ SUBLANGID (int ) ;
 int SUBLANG_DEFAULT ;
 int SUBLANG_NEUTRAL ;
 scalar_t__ SUBLANG_SYS_DEFAULT ;
 int TRUE ;
 void* find_entry_by_id (void*,int ,void*,int) ;
 void* find_entry_by_name (void*,int ,void*,int) ;
 void* find_first_entry (void*,void*,int) ;
 int push_language (int *,int,int ) ;

NTSTATUS find_entry( PVOID BaseAddress, LDR_RESOURCE_INFO *info,
                     ULONG level, void **ret, int want_dir )
{
    ULONG size;
    void *root;
    IMAGE_RESOURCE_DIRECTORY *resdirptr;
    USHORT list[9];
    int i, pos = 0;
    LCID user_lcid, system_lcid;

    root = RtlImageDirectoryEntryToData( BaseAddress, TRUE, IMAGE_DIRECTORY_ENTRY_RESOURCE, &size );
    if (!root) return STATUS_RESOURCE_DATA_NOT_FOUND;
    if (size < sizeof(*resdirptr)) return STATUS_RESOURCE_DATA_NOT_FOUND;
    resdirptr = root;

    if (!level--) goto done;
    if (!(*ret = find_entry_by_name( resdirptr, (LPCWSTR)info->Type, root, want_dir || level )))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;
    if (!level--) return STATUS_SUCCESS;

    resdirptr = *ret;
    if (!(*ret = find_entry_by_name( resdirptr, (LPCWSTR)info->Name, root, want_dir || level )))
        return STATUS_RESOURCE_NAME_NOT_FOUND;
    if (!level--) return STATUS_SUCCESS;
    if (level) return STATUS_INVALID_PARAMETER;


    pos = push_language( list, pos, info->Language );


    pos = push_language( list, pos, MAKELANGID( PRIMARYLANGID(info->Language), SUBLANG_NEUTRAL ) );


    pos = push_language( list, pos, MAKELANGID( LANG_NEUTRAL, SUBLANG_NEUTRAL ) );


    if (PRIMARYLANGID(info->Language) == LANG_NEUTRAL)
    {

        if (SUBLANGID(info->Language) != SUBLANG_SYS_DEFAULT)
        {

            pos = push_language( list, pos, LANGIDFROMLCID(NtCurrentTeb()->CurrentLocale) );

            if (NT_SUCCESS(NtQueryDefaultLocale(TRUE, &user_lcid)))
            {

                pos = push_language( list, pos, LANGIDFROMLCID(user_lcid) );


                pos = push_language( list, pos, MAKELANGID( PRIMARYLANGID(user_lcid), SUBLANG_NEUTRAL ) );
            }
        }



        if (NT_SUCCESS(NtQueryDefaultLocale(FALSE, &system_lcid)))
        {

            pos = push_language( list, pos, LANGIDFROMLCID( system_lcid ) );


            pos = push_language( list, pos, MAKELANGID( PRIMARYLANGID(system_lcid), SUBLANG_NEUTRAL ) );
        }


        pos = push_language( list, pos, MAKELANGID( LANG_ENGLISH, SUBLANG_DEFAULT ) );
    }

    resdirptr = *ret;
    for (i = 0; i < pos; i++)
        if ((*ret = find_entry_by_id( resdirptr, list[i], root, want_dir ))) return STATUS_SUCCESS;


    if (PRIMARYLANGID(info->Language) == LANG_NEUTRAL)
    {
        if ((*ret = find_first_entry( resdirptr, root, want_dir ))) return STATUS_SUCCESS;
    }
    return STATUS_RESOURCE_LANG_NOT_FOUND;

done:
    *ret = resdirptr;
    return STATUS_SUCCESS;
}
