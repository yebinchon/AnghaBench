
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
typedef scalar_t__ ULONG_PTR ;
typedef int UINT ;
struct TYPE_3__ {int Flags; scalar_t__ Text; } ;
typedef int NTSTATUS ;
typedef TYPE_1__ MESSAGE_RESOURCE_ENTRY ;
typedef int * LPWSTR ;
typedef scalar_t__ HMODULE ;


 int CP_ACP ;
 scalar_t__ GetModuleHandleW (int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int MESSAGE_RESOURCE_UNICODE ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int NT_SUCCESS (int ) ;
 scalar_t__ RT_MESSAGETABLE ;
 int RtlFindMessage (scalar_t__,scalar_t__,int ,int ,TYPE_1__ const**) ;
 int RtlNtStatusToDosError (int ) ;
 int STATUS_SUCCESS ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,...) ;
 int memcpy (int *,scalar_t__,int) ;
 int strlenW (int const*) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static LPWSTR load_message( HMODULE module, UINT id, WORD lang )
{



    const MESSAGE_RESOURCE_ENTRY *mre;

    WCHAR *buffer;
    NTSTATUS status;

    TRACE("module = %p, id = %08x\n", module, id );

    if (!module) module = GetModuleHandleW( ((void*)0) );




    if ((status = RtlFindMessage( module, RT_MESSAGETABLE, lang, id, &mre )) != STATUS_SUCCESS)

    {
        SetLastError( RtlNtStatusToDosError(status) );
        return ((void*)0);
    }

    if (mre->Flags & MESSAGE_RESOURCE_UNICODE)
    {
        int len = (strlenW( (const WCHAR *)mre->Text ) + 1) * sizeof(WCHAR);
        if (!(buffer = HeapAlloc( GetProcessHeap(), 0, len ))) return ((void*)0);
        memcpy( buffer, mre->Text, len );
    }
    else
    {
        int len = MultiByteToWideChar( CP_ACP, 0, (const char *)mre->Text, -1, ((void*)0), 0 );
        if (!(buffer = HeapAlloc( GetProcessHeap(), 0, len * sizeof(WCHAR) ))) return ((void*)0);
        MultiByteToWideChar( CP_ACP, 0, (const char*)mre->Text, -1, buffer, len );
    }
    TRACE("returning %s\n", wine_dbgstr_w(buffer));
    return buffer;
}
