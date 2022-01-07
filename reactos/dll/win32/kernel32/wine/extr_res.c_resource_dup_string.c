
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int NameOffset; int Id; int NameIsString; } ;
struct TYPE_4__ {int Length; int NameString; } ;
typedef scalar_t__* LPWSTR ;
typedef TYPE_1__ IMAGE_RESOURCE_DIR_STRING_U ;
typedef TYPE_2__ IMAGE_RESOURCE_DIRECTORY_ENTRY ;
typedef int IMAGE_RESOURCE_DIRECTORY ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 scalar_t__* UIntToPtr (int ) ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static LPWSTR resource_dup_string( const IMAGE_RESOURCE_DIRECTORY *root, const IMAGE_RESOURCE_DIRECTORY_ENTRY *entry )
{
    const IMAGE_RESOURCE_DIR_STRING_U* string;
    LPWSTR s;

    if (!entry->NameIsString)
        return UIntToPtr(entry->Id);

    string = (const IMAGE_RESOURCE_DIR_STRING_U*) (((const char *)root) + entry->NameOffset);
    s = HeapAlloc(GetProcessHeap(), 0, (string->Length + 1)*sizeof (WCHAR) );
    memcpy( s, string->NameString, (string->Length + 1)*sizeof (WCHAR) );
    s[string->Length] = 0;

    return s;
}
