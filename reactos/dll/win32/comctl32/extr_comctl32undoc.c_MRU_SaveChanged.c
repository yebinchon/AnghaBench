
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef size_t UINT ;
struct TYPE_7__ {int itemFlag; int size; int datastart; } ;
struct TYPE_5__ {char* lpszSubKey; int fFlags; int hKey; } ;
struct TYPE_6__ {int wineFlags; char* realMRU; size_t cursize; TYPE_1__ extview; TYPE_3__** array; } ;
typedef TYPE_2__* LPWINEMRULIST ;
typedef TYPE_3__* LPWINEMRUITEM ;
typedef int * LPBYTE ;
typedef int HKEY ;


 int ERR (char*,size_t,...) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int MRU_BINARY ;
 int REG_BINARY ;
 int REG_OPTION_NON_VOLATILE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 size_t RegCreateKeyExW (int ,char*,int ,int *,int ,int,int ,int *,int ) ;
 size_t RegOpenKeyExW (int ,char*,int ,int,int *) ;
 size_t RegSetValueExW (int ,char*,int ,int ,int *,int) ;
 int TRACE (char*,int ,...) ;
 int WMRUF_CHANGED ;
 int WMRUIF_CHANGED ;
 int debugstr_w (char*) ;
 char* strMRUList ;
 int strlenW (char*) ;

__attribute__((used)) static void MRU_SaveChanged ( LPWINEMRULIST mp )
{
    UINT i, err;
    HKEY newkey;
    WCHAR realname[2];
    LPWINEMRUITEM witem;





    if ((err = RegOpenKeyExW( mp->extview.hKey, mp->extview.lpszSubKey,
         0, KEY_WRITE, &newkey))) {

 ERR("Could not open key, error=%d, attempting to create\n",
     err);
 if ((err = RegCreateKeyExW( mp->extview.hKey, mp->extview.lpszSubKey,
        0,
        ((void*)0),
        REG_OPTION_NON_VOLATILE,
        KEY_READ | KEY_WRITE,
        0,
        &newkey,
        0))) {
     ERR("failed to create key /%s/, err=%d\n",
  debugstr_w(mp->extview.lpszSubKey), err);
     return;
 }
    }
    if (mp->wineFlags & WMRUF_CHANGED) {
 mp->wineFlags &= ~WMRUF_CHANGED;
 err = RegSetValueExW(newkey, strMRUList, 0, REG_SZ, (LPBYTE)mp->realMRU,
        (strlenW(mp->realMRU) + 1)*sizeof(WCHAR));
 if (err) {
     ERR("error saving MRUList, err=%d\n", err);
 }
 TRACE("saving MRUList=/%s/\n", debugstr_w(mp->realMRU));
    }
    realname[1] = 0;
    for(i=0; i<mp->cursize; i++) {
 witem = mp->array[i];
 if (witem->itemFlag & WMRUIF_CHANGED) {
     witem->itemFlag &= ~WMRUIF_CHANGED;
     realname[0] = 'a' + i;
     err = RegSetValueExW(newkey, realname, 0,
     (mp->extview.fFlags & MRU_BINARY) ?
     REG_BINARY : REG_SZ,
     &witem->datastart, witem->size);
     if (err) {
  ERR("error saving /%s/, err=%d\n", debugstr_w(realname), err);
     }
            TRACE("saving value for name /%s/ size=%d\n",
    debugstr_w(realname), witem->size);
 }
    }
    RegCloseKey( newkey );
}
