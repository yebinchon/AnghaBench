
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_17__ ;


typedef int dps ;
typedef int data_format ;
typedef char WCHAR ;
struct TYPE_29__ {int dwSize; int dwObjSize; int dwNumObjs; scalar_t__ rgodf; int dwDataSize; int dwFlags; } ;
struct TYPE_28__ {unsigned int offset; unsigned int dwOfs; int uAppData; } ;
struct TYPE_20__ {int dwSize; int dwHeaderSize; void* dwHow; scalar_t__ dwObj; } ;
struct TYPE_27__ {scalar_t__ dwData; TYPE_17__ diph; } ;
struct TYPE_26__ {TYPE_17__ diph; int lMax; int lMin; } ;
struct TYPE_25__ {char* wsz; TYPE_17__ diph; } ;
struct TYPE_24__ {int num_actions; TYPE_8__* action_map; int guid; scalar_t__ acquired; } ;
struct TYPE_23__ {int dwObjSize; } ;
struct TYPE_22__ {int dwNumActions; int dwGenre; int dwCRC; scalar_t__ dwBufferSize; int lAxisMax; int lAxisMin; TYPE_1__* rgoAction; int dwDataSize; } ;
struct TYPE_21__ {int dwObjID; int dwSemantic; int uAppData; int guidInstance; } ;
typedef int LPDIRECTINPUTDEVICE8W ;
typedef scalar_t__ LPDIOBJECTDATAFORMAT ;
typedef TYPE_2__* LPDIACTIONFORMATW ;
typedef char* LPCWSTR ;
typedef TYPE_3__* LPCDIDATAFORMAT ;
typedef TYPE_4__ IDirectInputDeviceImpl ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_5__ DIPROPSTRING ;
typedef TYPE_6__ DIPROPRANGE ;
typedef int DIPROPHEADER ;
typedef TYPE_7__ DIPROPDWORD ;
typedef TYPE_8__ DIOBJECTDATAFORMAT ;
typedef TYPE_9__ DIDATAFORMAT ;
typedef int ActionMap ;


 int ARRAY_SIZE (char*) ;
 int DIDFT_AXIS ;
 int DIDFT_BUTTON ;
 int DIDFT_GETINSTANCE (int) ;
 int DIDFT_GETTYPE (int) ;
 int DIDFT_PSHBUTTON ;
 int DIDFT_RELAXIS ;
 int DIDF_RELAXIS ;
 int DIDSAM_FORCESAVE ;
 int DIDSAM_NOUSER ;
 int DIERR_ACQUIRED ;
 void* DIPH_DEVICE ;
 int DIPROP_BUFFERSIZE ;
 int DIPROP_RANGE ;
 int DIPROP_USERNAME ;
 int DI_NOEFFECT ;
 int DI_OK ;
 int GetProcessHeap () ;
 int GetUserNameW (char*,int*) ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_8__*) ;
 int IDirectInputDevice8_SetDataFormat (int ,TYPE_9__*) ;
 int IDirectInputDevice8_SetProperty (int ,int ,TYPE_17__*) ;
 int IID_NULL ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int MAX_PATH ;
 int TRACE (char*,scalar_t__,int,int) ;
 scalar_t__ dataformat_to_odf_by_type (TYPE_3__*,int,int) ;
 TYPE_4__* impl_from_IDirectInputDevice8W (int ) ;
 int lstrcpynW (char*,char*,int) ;
 int memcpy (TYPE_8__*,scalar_t__,int ) ;
 int save_mapping_settings (int ,TYPE_2__*,char*) ;
 int semantic_to_obj_id (TYPE_4__*,int) ;

HRESULT _set_action_map(LPDIRECTINPUTDEVICE8W iface, LPDIACTIONFORMATW lpdiaf, LPCWSTR lpszUserName, DWORD dwFlags, LPCDIDATAFORMAT df)
{
    IDirectInputDeviceImpl *This = impl_from_IDirectInputDevice8W(iface);
    DIDATAFORMAT data_format;
    DIOBJECTDATAFORMAT *obj_df = ((void*)0);
    DIPROPDWORD dp;
    DIPROPRANGE dpr;
    DIPROPSTRING dps;
    WCHAR username[MAX_PATH];
    DWORD username_size = MAX_PATH;
    DWORD new_crc = 0;
    int i, action = 0, num_actions = 0;
    unsigned int offset = 0;

    if (This->acquired) return DIERR_ACQUIRED;

    data_format.dwSize = sizeof(data_format);
    data_format.dwObjSize = sizeof(DIOBJECTDATAFORMAT);
    data_format.dwFlags = DIDF_RELAXIS;
    data_format.dwDataSize = lpdiaf->dwDataSize;


    for (i=0; i < lpdiaf->dwNumActions; i++)
    {
        new_crc ^= (lpdiaf->rgoAction[i].dwObjID << i * 2) | (lpdiaf->rgoAction[i].dwObjID >> (sizeof(lpdiaf->dwCRC) * 8 - i * 2));
        new_crc ^= (lpdiaf->rgoAction[i].dwSemantic << (i * 2 + 5)) | (lpdiaf->rgoAction[i].dwSemantic >> (sizeof(lpdiaf->dwCRC) * 8 - (i * 2 + 5)));
    }


    for (i=0; i < lpdiaf->dwNumActions; i++)
    {
        if (IsEqualGUID(&This->guid, &lpdiaf->rgoAction[i].guidInstance) ||
                (IsEqualGUID(&IID_NULL, &lpdiaf->rgoAction[i].guidInstance) &&
                  ((lpdiaf->rgoAction[i].dwSemantic & lpdiaf->dwGenre) == lpdiaf->dwGenre ||
                   (lpdiaf->rgoAction[i].dwSemantic & 0xff000000) == 0xff000000 ) ))
        {
            num_actions++;
        }
    }


    if (num_actions == 0 && lpdiaf->dwCRC == new_crc && !(dwFlags & DIDSAM_FORCESAVE)) return DI_NOEFFECT;


    lpdiaf->dwCRC = new_crc;

    This->num_actions = num_actions;


    obj_df = HeapAlloc(GetProcessHeap(), 0, sizeof(DIOBJECTDATAFORMAT)*num_actions);
    data_format.rgodf = (LPDIOBJECTDATAFORMAT)obj_df;
    data_format.dwNumObjs = num_actions;

    HeapFree(GetProcessHeap(), 0, This->action_map);
    This->action_map = HeapAlloc(GetProcessHeap(), 0, sizeof(ActionMap)*num_actions);

    for (i = 0; i < lpdiaf->dwNumActions; i++)
    {
        if (IsEqualGUID(&This->guid, &lpdiaf->rgoAction[i].guidInstance))
        {
            DWORD inst = DIDFT_GETINSTANCE(lpdiaf->rgoAction[i].dwObjID);
            DWORD type = DIDFT_GETTYPE(lpdiaf->rgoAction[i].dwObjID);
            LPDIOBJECTDATAFORMAT obj;

            if (type == DIDFT_PSHBUTTON) type = DIDFT_BUTTON;
            if (type == DIDFT_RELAXIS) type = DIDFT_AXIS;

            obj = dataformat_to_odf_by_type(df, inst, type);

            memcpy(&obj_df[action], obj, df->dwObjSize);

            This->action_map[action].uAppData = lpdiaf->rgoAction[i].uAppData;
            This->action_map[action].offset = offset;
            obj_df[action].dwOfs = offset;
            offset += (type & DIDFT_BUTTON) ? 1 : 4;

            action++;
        }
        else if ((lpdiaf->rgoAction[i].dwSemantic & lpdiaf->dwGenre) == lpdiaf->dwGenre ||
                 (lpdiaf->rgoAction[i].dwSemantic & 0xff000000) == 0xff000000 )
        {
            DWORD obj_id = semantic_to_obj_id(This, lpdiaf->rgoAction[i].dwSemantic);
            DWORD type = DIDFT_GETTYPE(obj_id);
            DWORD inst = DIDFT_GETINSTANCE(obj_id);
            LPDIOBJECTDATAFORMAT obj;

            if (type == DIDFT_PSHBUTTON) type = DIDFT_BUTTON;
            else if (type == DIDFT_RELAXIS) type = DIDFT_AXIS;

            obj = dataformat_to_odf_by_type(df, inst, type);
            TRACE("obj %p, inst 0x%08x, type 0x%08x\n", obj, inst, type);
            if(obj)
            {
                memcpy(&obj_df[action], obj, df->dwObjSize);

                This->action_map[action].uAppData = lpdiaf->rgoAction[i].uAppData;
                This->action_map[action].offset = offset;
                obj_df[action].dwOfs = offset;
                offset += (type & DIDFT_BUTTON) ? 1 : 4;

                action++;
            }
        }
    }

    if (action == 0)
    {
        HeapFree(GetProcessHeap(), 0, obj_df);
        return DI_NOEFFECT;
    }
    data_format.dwNumObjs = action;

    IDirectInputDevice8_SetDataFormat(iface, &data_format);

    HeapFree(GetProcessHeap(), 0, obj_df);


    dpr.diph.dwSize = sizeof(DIPROPRANGE);
    dpr.lMin = lpdiaf->lAxisMin;
    dpr.lMax = lpdiaf->lAxisMax;
    dpr.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    dpr.diph.dwHow = DIPH_DEVICE;
    IDirectInputDevice8_SetProperty(iface, DIPROP_RANGE, &dpr.diph);

    if (lpdiaf->dwBufferSize > 0)
    {
        dp.diph.dwSize = sizeof(DIPROPDWORD);
        dp.dwData = lpdiaf->dwBufferSize;
        dp.diph.dwHeaderSize = sizeof(DIPROPHEADER);
        dp.diph.dwHow = DIPH_DEVICE;
        IDirectInputDevice8_SetProperty(iface, DIPROP_BUFFERSIZE, &dp.diph);
    }


    if (lpszUserName == ((void*)0))
        GetUserNameW(username, &username_size);
    else
        lstrcpynW(username, lpszUserName, MAX_PATH);

    dps.diph.dwSize = sizeof(dps);
    dps.diph.dwHeaderSize = sizeof(DIPROPHEADER);
    dps.diph.dwObj = 0;
    dps.diph.dwHow = DIPH_DEVICE;
    if (dwFlags & DIDSAM_NOUSER)
        dps.wsz[0] = '\0';
    else
        lstrcpynW(dps.wsz, username, ARRAY_SIZE(dps.wsz));
    IDirectInputDevice8_SetProperty(iface, DIPROP_USERNAME, &dps.diph);


    save_mapping_settings(iface, lpdiaf, username);

    return DI_OK;
}
