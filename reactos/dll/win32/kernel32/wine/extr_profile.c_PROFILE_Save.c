
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_5__ {scalar_t__* value; scalar_t__* name; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* key; scalar_t__* name; struct TYPE_4__* next; } ;
typedef TYPE_1__ PROFILESECTION ;
typedef TYPE_2__ PROFILEKEY ;
typedef int HANDLE ;
typedef int ENCODING ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int PROFILE_WriteLine (int ,scalar_t__*,int,int ) ;
 int PROFILE_WriteMarker (int ,int ) ;
 int strcpyW (scalar_t__*,scalar_t__*) ;
 scalar_t__ strlenW (scalar_t__*) ;

__attribute__((used)) static void PROFILE_Save( HANDLE hFile, const PROFILESECTION *section, ENCODING encoding )
{
    PROFILEKEY *key;
    WCHAR *buffer, *p;

    PROFILE_WriteMarker(hFile, encoding);

    for ( ; section; section = section->next)
    {
        int len = 0;

        if (section->name[0]) len += strlenW(section->name) + 4;

        for (key = section->key; key; key = key->next)
        {
            len += strlenW(key->name) + 2;
            if (key->value) len += strlenW(key->value) + 1;
        }

        buffer = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
        if (!buffer) return;

        p = buffer;
        if (section->name[0])
        {
            *p++ = '[';
            strcpyW( p, section->name );
            p += strlenW(p);
            *p++ = ']';
            *p++ = '\r';
            *p++ = '\n';
        }

        for (key = section->key; key; key = key->next)
        {
            strcpyW( p, key->name );
            p += strlenW(p);
            if (key->value)
            {
                *p++ = '=';
                strcpyW( p, key->value );
                p += strlenW(p);
            }
            *p++ = '\r';
            *p++ = '\n';
        }
        PROFILE_WriteLine( hFile, buffer, len, encoding );
        HeapFree(GetProcessHeap(), 0, buffer);
    }
}
