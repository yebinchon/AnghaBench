
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int changed; int section; } ;
struct TYPE_4__ {int * value; } ;
typedef TYPE_1__ PROFILEKEY ;
typedef int * LPCWSTR ;
typedef int BOOL ;


 TYPE_3__* CurProfile ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int PROFILE_DeleteKey (int *,int *,int *) ;
 int PROFILE_DeleteSection (int *,int *) ;
 TYPE_1__* PROFILE_Find (int *,int *,int *,int ,int ) ;
 scalar_t__ PROFILE_isspaceW (int ) ;
 int TRACE (char*,...) ;
 int TRUE ;
 int debugstr_w (int *) ;
 int strcmpW (int *,int *) ;
 int strcpyW (int *,int *) ;
 int strlenW (int *) ;

__attribute__((used)) static BOOL PROFILE_SetString( LPCWSTR section_name, LPCWSTR key_name,
                               LPCWSTR value, BOOL create_always )
{
    if (!key_name)
    {
        TRACE("(%s)\n", debugstr_w(section_name));
        CurProfile->changed |= PROFILE_DeleteSection( &CurProfile->section,
                                                      section_name );
        return TRUE;

    }
    else if (!value)
    {
        TRACE("(%s,%s)\n", debugstr_w(section_name), debugstr_w(key_name) );
        CurProfile->changed |= PROFILE_DeleteKey( &CurProfile->section,
                                                  section_name, key_name );
        return TRUE;
    }
    else
    {
        PROFILEKEY *key = PROFILE_Find(&CurProfile->section, section_name,
                                        key_name, TRUE, create_always );
        TRACE("(%s,%s,%s):\n",
              debugstr_w(section_name), debugstr_w(key_name), debugstr_w(value) );
        if (!key) return FALSE;



        while (PROFILE_isspaceW(*value)) value++;

        if (key->value)
        {
            if (!strcmpW( key->value, value ))
            {
                TRACE("  no change needed\n" );
                return TRUE;
            }
            TRACE("  replacing %s\n", debugstr_w(key->value) );
            HeapFree( GetProcessHeap(), 0, key->value );
        }
        else TRACE("  creating key\n" );
        key->value = HeapAlloc( GetProcessHeap(), 0, (strlenW(value)+1) * sizeof(WCHAR) );
        strcpyW( key->value, value );
        CurProfile->changed = TRUE;
    }
    return TRUE;
}
