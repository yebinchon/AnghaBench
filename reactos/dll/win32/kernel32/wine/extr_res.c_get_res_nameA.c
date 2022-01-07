
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONG ;
typedef scalar_t__ NTSTATUS ;
typedef char* LPCSTR ;


 int FALSE ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ IS_INTRESOURCE (char*) ;
 int LOWORD (char*) ;
 scalar_t__ RtlCharToInteger (char*,int,int *) ;
 int RtlCreateUnicodeStringFromAsciiz (TYPE_1__*,char*) ;
 int RtlUpcaseUnicodeString (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_SUCCESS ;
 void* ULongToPtr (int ) ;

__attribute__((used)) static NTSTATUS get_res_nameA( LPCSTR name, UNICODE_STRING *str )
{
    if (IS_INTRESOURCE(name))
    {
        str->Buffer = ULongToPtr(LOWORD(name));
        return STATUS_SUCCESS;
    }
    if (name[0] == '#')
    {
        ULONG value;
        if (RtlCharToInteger( name + 1, 10, &value ) != STATUS_SUCCESS || HIWORD(value))
            return STATUS_INVALID_PARAMETER;
        str->Buffer = ULongToPtr(value);
        return STATUS_SUCCESS;
    }
    RtlCreateUnicodeStringFromAsciiz( str, name );
    RtlUpcaseUnicodeString( str, str, FALSE );
    return STATUS_SUCCESS;
}
