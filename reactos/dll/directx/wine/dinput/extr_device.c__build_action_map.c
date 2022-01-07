
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_12__ {int guid; } ;
struct TYPE_11__ {int dwNumActions; int dwCRC; TYPE_1__* rgoAction; } ;
struct TYPE_10__ {int dwObjID; int dwSemantic; int dwHow; int guidInstance; } ;
typedef int LPDIRECTINPUTDEVICE8W ;
typedef int * LPDIOBJECTDATAFORMAT ;
typedef TYPE_2__* LPDIACTIONFORMATW ;
typedef int * LPCWSTR ;
typedef int LPCDIDATAFORMAT ;
typedef TYPE_3__ IDirectInputDeviceImpl ;
typedef int HRESULT ;
typedef int GUID ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int DIAH_DEFAULT ;
 int DIAH_UNMAPPED ;
 scalar_t__ DIDBAM_HWDEFAULTS ;
 scalar_t__ DIDBAM_PRESERVE ;
 scalar_t__ DIDFT_AXIS ;
 scalar_t__ DIDFT_BUTTON ;
 scalar_t__ DIDFT_GETINSTANCE (scalar_t__) ;
 scalar_t__ DIDFT_GETTYPE (scalar_t__) ;
 scalar_t__ DIDFT_PSHBUTTON ;
 scalar_t__ DIDFT_RELAXIS ;
 int DI_NOEFFECT ;
 int DI_OK ;
 scalar_t__ FALSE ;
 int GetUserNameW (int *,scalar_t__*) ;
 int IDirectInputDevice8WImpl_BuildActionMap (int ,TYPE_2__*,int *,scalar_t__) ;
 int MAX_PATH ;
 scalar_t__ TRUE ;
 int * dataformat_to_odf_by_type (int ,scalar_t__,scalar_t__) ;
 TYPE_3__* impl_from_IDirectInputDevice8W (int ) ;
 scalar_t__ load_mapping_settings (TYPE_3__*,TYPE_2__*,int *) ;
 int lstrcpynW (int *,int *,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ semantic_to_obj_id (TYPE_3__*,scalar_t__) ;

HRESULT _build_action_map(LPDIRECTINPUTDEVICE8W iface, LPDIACTIONFORMATW lpdiaf, LPCWSTR lpszUserName, DWORD dwFlags, DWORD devMask, LPCDIDATAFORMAT df)
{
    IDirectInputDeviceImpl *This = impl_from_IDirectInputDevice8W(iface);
    WCHAR username[MAX_PATH];
    DWORD username_size = MAX_PATH;
    int i;
    BOOL load_success = FALSE, has_actions = FALSE;


    if (!(dwFlags & DIDBAM_HWDEFAULTS))
    {

        if (lpszUserName == ((void*)0))
            GetUserNameW(username, &username_size);
        else
            lstrcpynW(username, lpszUserName, MAX_PATH);

        load_success = load_mapping_settings(This, lpdiaf, username);
    }

    if (load_success) {

        for (i=0; i < lpdiaf->dwNumActions; i++)
        {
            lpdiaf->dwCRC ^= (lpdiaf->rgoAction[i].dwObjID << i * 2) | (lpdiaf->rgoAction[i].dwObjID >> (sizeof(lpdiaf->dwCRC) * 8 - i * 2));
            lpdiaf->dwCRC ^= (lpdiaf->rgoAction[i].dwSemantic << (i * 2 + 5)) | (lpdiaf->rgoAction[i].dwSemantic >> (sizeof(lpdiaf->dwCRC) * 8 - (i * 2 + 5)));
        }
        return DI_OK;
    }

    for (i=0; i < lpdiaf->dwNumActions; i++)
    {
        if ((lpdiaf->rgoAction[i].dwSemantic & devMask) == devMask)
        {
            DWORD obj_id = semantic_to_obj_id(This, lpdiaf->rgoAction[i].dwSemantic);
            DWORD type = DIDFT_GETTYPE(obj_id);
            DWORD inst = DIDFT_GETINSTANCE(obj_id);

            LPDIOBJECTDATAFORMAT odf;

            if (type == DIDFT_PSHBUTTON) type = DIDFT_BUTTON;
            if (type == DIDFT_RELAXIS) type = DIDFT_AXIS;


            odf = dataformat_to_odf_by_type(df, inst, type);

            if (odf != ((void*)0))
            {
                lpdiaf->rgoAction[i].dwObjID = obj_id;
                lpdiaf->rgoAction[i].guidInstance = This->guid;
                lpdiaf->rgoAction[i].dwHow = DIAH_DEFAULT;
                has_actions = TRUE;
            }
        }
        else if (!(dwFlags & DIDBAM_PRESERVE))
        {

            memset(&lpdiaf->rgoAction[i].guidInstance, 0, sizeof(GUID));
            lpdiaf->rgoAction[i].dwHow = DIAH_UNMAPPED;
        }
    }


    lpdiaf->dwCRC = 0;
    for (i=0; i < lpdiaf->dwNumActions; i++)
    {
        lpdiaf->dwCRC ^= (lpdiaf->rgoAction[i].dwObjID << i * 2) | (lpdiaf->rgoAction[i].dwObjID >> (sizeof(lpdiaf->dwCRC) * 8 - i * 2));
        lpdiaf->dwCRC ^= (lpdiaf->rgoAction[i].dwSemantic << (i * 2 + 5)) | (lpdiaf->rgoAction[i].dwSemantic >> (sizeof(lpdiaf->dwCRC) * 8 - (i * 2 + 5)));
    }

    if (!has_actions) return DI_NOEFFECT;

    return IDirectInputDevice8WImpl_BuildActionMap(iface, lpdiaf, lpszUserName, dwFlags);
}
