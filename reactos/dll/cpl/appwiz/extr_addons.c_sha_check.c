
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sha ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_2__ {int sha; } ;
typedef int SHA_CTX ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int A_SHAFinal (int *,int *) ;
 int A_SHAInit (int *) ;
 int A_SHAUpdate (int *,unsigned char const*,int) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileMappingW (scalar_t__,int *,int ,int ,int ,int *) ;
 scalar_t__ CreateFileW (int const*,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_MAP_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 unsigned char* MapViewOfFile (scalar_t__,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int TRUE ;
 int UnmapViewOfFile (unsigned char const*) ;
 int WARN (char*,char*,int ) ;
 TYPE_1__* addon ;
 int sprintf (char*,char*,unsigned char) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static BOOL sha_check(const WCHAR *file_name)
{
    const unsigned char *file_map;
    HANDLE file, map;
    ULONG sha[5];
    char buf[2*sizeof(sha)+1];
    SHA_CTX ctx;
    DWORD size, i;

    file = CreateFileW(file_name, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_READONLY, ((void*)0));
    if(file == INVALID_HANDLE_VALUE)
        return FALSE;

    size = GetFileSize(file, ((void*)0));

    map = CreateFileMappingW(file, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
    CloseHandle(file);
    if(!map)
        return FALSE;

    file_map = MapViewOfFile(map, FILE_MAP_READ, 0, 0, 0);
    CloseHandle(map);
    if(!file_map)
        return FALSE;

    A_SHAInit(&ctx);
    A_SHAUpdate(&ctx, file_map, size);
    A_SHAFinal(&ctx, sha);

    UnmapViewOfFile(file_map);

    for(i=0; i < sizeof(sha); i++)
        sprintf(buf + i*2, "%02x", *((unsigned char*)sha+i));

    if(strcmp(buf, addon->sha)) {
        WARN("Got %s, expected %s\n", buf, addon->sha);
        return FALSE;
    }

    return TRUE;
}
