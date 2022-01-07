
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int obj_class; } ;
struct TYPE_9__ {int error; TYPE_1__ header; } ;
struct TYPE_8__ {int value; } ;
typedef TYPE_2__* HPDF_Name ;
typedef TYPE_3__* HPDF_Image ;
typedef int HPDF_BOOL ;


 TYPE_2__* HPDF_Dict_GetItem (TYPE_3__*,char*,int ) ;
 int HPDF_FALSE ;
 int HPDF_INVALID_IMAGE ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OCLASS_NAME ;
 int HPDF_OSUBCLASS_XOBJECT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_RaiseError (int ,int ,int ) ;
 scalar_t__ HPDF_StrCmp (int ,char*) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_Image_Validate (HPDF_Image image)
{
    HPDF_Name subtype;

    HPDF_PTRACE ((" HPDF_Image_Validate\n"));

    if (!image)
        return HPDF_FALSE;

    if (image->header.obj_class != (HPDF_OSUBCLASS_XOBJECT |
                HPDF_OCLASS_DICT)) {
        HPDF_RaiseError (image->error, HPDF_INVALID_IMAGE, 0);
        return HPDF_FALSE;
    }

    subtype = HPDF_Dict_GetItem (image, "Subtype", HPDF_OCLASS_NAME);
    if (!subtype || HPDF_StrCmp (subtype->value, "Image") != 0) {
        HPDF_RaiseError (image->error, HPDF_INVALID_IMAGE, 0);
        return HPDF_FALSE;
    }

    return HPDF_TRUE;
}
