
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
typedef scalar_t__ NTSTATUS ;
typedef char* LPCWSTR ;


 int FALSE ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ IS_INTRESOURCE (char*) ;
 int LOWORD (char*) ;
 int RtlCreateUnicodeString (TYPE_1__*,char*) ;
 int RtlInitUnicodeString (TYPE_1__*,char*) ;
 scalar_t__ RtlUnicodeStringToInteger (TYPE_1__*,int,int *) ;
 int RtlUpcaseUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_SUCCESS ;
 void* ULongToPtr (int ) ;

__attribute__((used)) static NTSTATUS get_res_nameW( LPCWSTR name, UNICODE_STRING *str )
{
    if (IS_INTRESOURCE(name))
    {
        str->Buffer = ULongToPtr(LOWORD(name));
        return STATUS_SUCCESS;
    }
    if (name[0] == '#')
    {
        ULONG value;
        RtlInitUnicodeString( str, name + 1 );
        if (RtlUnicodeStringToInteger( str, 10, &value ) != STATUS_SUCCESS || HIWORD(value))
            return STATUS_INVALID_PARAMETER;
        str->Buffer = ULongToPtr(value);
        return STATUS_SUCCESS;
    }
    RtlCreateUnicodeString( str, name );
    RtlUpcaseUnicodeString( str, str, FALSE );
    return STATUS_SUCCESS;
}
