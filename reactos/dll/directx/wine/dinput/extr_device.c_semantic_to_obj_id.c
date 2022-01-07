
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int dwNumObjs; } ;
struct TYPE_7__ {TYPE_6__* wine_df; } ;
struct TYPE_9__ {TYPE_1__ data_format; } ;
struct TYPE_8__ {int dwOfs; int dwType; } ;
typedef TYPE_2__* LPDIOBJECTDATAFORMAT ;
typedef TYPE_3__ IDirectInputDeviceImpl ;
typedef int DWORD ;
typedef int BOOL ;


 int DIDFT_AXIS ;
 int DIDFT_BUTTON ;
 int DIDFT_GETINSTANCE (int ) ;
 int DIDFT_PSHBUTTON ;
 int DIDFT_RELAXIS ;
 int FALSE ;
 int TRUE ;
 TYPE_2__* dataformat_to_odf (TYPE_6__*,int) ;

__attribute__((used)) static DWORD semantic_to_obj_id(IDirectInputDeviceImpl* This, DWORD dwSemantic)
{
    DWORD type = (0x0000ff00 & dwSemantic) >> 8;
    DWORD offset = 0x000000ff & dwSemantic;
    DWORD obj_instance = 0;
    BOOL found = FALSE;
    int i;

    for (i = 0; i < This->data_format.wine_df->dwNumObjs; i++)
    {
        LPDIOBJECTDATAFORMAT odf = dataformat_to_odf(This->data_format.wine_df, i);

        if (odf->dwOfs == offset)
        {
            obj_instance = DIDFT_GETINSTANCE(odf->dwType);
            found = TRUE;
            break;
        }
    }

    if (!found) return 0;

    if (type & DIDFT_AXIS) type = DIDFT_RELAXIS;
    if (type & DIDFT_BUTTON) type = DIDFT_PSHBUTTON;

    return type | (0x0000ff00 & (obj_instance << 8));
}
