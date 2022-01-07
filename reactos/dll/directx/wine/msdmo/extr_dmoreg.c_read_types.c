
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_3__ {int subtype; int type; } ;
typedef int * LPCWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef TYPE_1__ DMO_PARTIAL_MEDIATYPE ;


 int CLSIDFromString (int *,int *) ;
 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 int KEY_READ ;
 int MAX_PATH ;
 int MSDMO_MAJOR_VERSION ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,int,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int *,int *,int *,int ,int*) ;
 int S_FALSE ;
 int S_OK ;
 int TRACE (char*,int ,int ,int) ;
 int debugstr_guid (int *) ;
 int szToGuidFmt ;
 int wsprintfW (int *,int ,int *) ;

HRESULT read_types(HKEY root, LPCWSTR key, ULONG *supplied, ULONG requested, DMO_PARTIAL_MEDIATYPE* types )
{
    HRESULT ret = S_OK;

    if (MSDMO_MAJOR_VERSION > 5)
    {
        DWORD len;
        LONG rc;

        len = requested * sizeof(DMO_PARTIAL_MEDIATYPE);
        rc = RegQueryValueExW(root, key, ((void*)0), ((void*)0), (LPBYTE) types, &len);
        ret = HRESULT_FROM_WIN32(rc);

        *supplied = len / sizeof(DMO_PARTIAL_MEDIATYPE);
    }
    else
    {
        HKEY hkey;
        WCHAR szGuidKey[64];

        *supplied = 0;
        if (ERROR_SUCCESS == RegOpenKeyExW(root, key, 0, KEY_READ, &hkey))
        {
          int index = 0;
          WCHAR szNextKey[MAX_PATH];
          DWORD len;
          LONG rc = ERROR_SUCCESS;

          while (rc == ERROR_SUCCESS)
          {
            len = MAX_PATH;
            rc = RegEnumKeyExW(hkey, index, szNextKey, &len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            if (rc == ERROR_SUCCESS)
            {
              HKEY subk;
              int sub_index = 0;
              LONG rcs = ERROR_SUCCESS;
              WCHAR szSubKey[MAX_PATH];

              RegOpenKeyExW(hkey, szNextKey, 0, KEY_READ, &subk);
              while (rcs == ERROR_SUCCESS)
              {
                len = MAX_PATH;
                rcs = RegEnumKeyExW(subk, sub_index, szSubKey, &len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
                if (rcs == ERROR_SUCCESS)
                {
                  if (*supplied >= requested)
                  {

                    ret = S_FALSE;
                    rc = ERROR_MORE_DATA;
                    rcs = ERROR_MORE_DATA;
                    break;
                  }

                  wsprintfW(szGuidKey,szToGuidFmt,szNextKey);
                  CLSIDFromString(szGuidKey, &types[*supplied].type);
                  wsprintfW(szGuidKey,szToGuidFmt,szSubKey);
                  CLSIDFromString(szGuidKey, &types[*supplied].subtype);
                  TRACE("Adding type %s subtype %s at index %i\n",
                    debugstr_guid(&types[*supplied].type),
                    debugstr_guid(&types[*supplied].subtype),
                    *supplied);
                  (*supplied)++;
                }
                sub_index++;
              }
              index++;
            }
          }
          RegCloseKey(hkey);
        }
    }
    return ret;
}
