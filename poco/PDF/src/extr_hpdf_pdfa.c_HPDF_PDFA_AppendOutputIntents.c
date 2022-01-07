
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int * catalog; int mmgr; int xref; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__* HPDF_Doc ;
typedef int * HPDF_Dict ;
typedef int * HPDF_Array ;


 int HPDF_Array_Add (int *,int *) ;
 int * HPDF_Array_New (int ) ;
 int HPDF_CheckError (int *) ;
 scalar_t__ HPDF_Dict_Add (int *,char*,int *) ;
 scalar_t__ HPDF_Dict_AddName (int *,char*,char*) ;
 int HPDF_Dict_Free (int *) ;
 int * HPDF_Dict_GetItem (int *,char*,int ) ;
 int * HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_Error_GetDetailCode (int *) ;
 int HPDF_HasDoc (TYPE_1__*) ;
 scalar_t__ HPDF_INVALID_DOCUMENT ;
 int HPDF_OCLASS_ARRAY ;
 scalar_t__ HPDF_OK ;
 int * HPDF_String_New (int ,char const*,int *) ;
 scalar_t__ HPDF_Xref_Add (int ,int *) ;

HPDF_STATUS
HPDF_PDFA_AppendOutputIntents(HPDF_Doc pdf, const char *iccname, HPDF_Dict iccdict)
{
    HPDF_Array intents;
    HPDF_Dict intent;
    HPDF_STATUS ret;
    if (!HPDF_HasDoc (pdf))
        return HPDF_INVALID_DOCUMENT;


    intent = HPDF_Dict_New (pdf->mmgr);
    ret = HPDF_Xref_Add (pdf->xref, intent);
    if ( ret != HPDF_OK) {
        HPDF_Dict_Free(intent);
        return ret;
    }
    ret += HPDF_Dict_AddName (intent, "Type", "OutputIntent");
    ret += HPDF_Dict_AddName (intent, "S", "GTS_PDFA1");
    ret += HPDF_Dict_Add (intent, "OutputConditionIdentifier", HPDF_String_New (pdf->mmgr, iccname, ((void*)0)));
    ret += HPDF_Dict_Add (intent, "OutputCondition", HPDF_String_New (pdf->mmgr, iccname,((void*)0)));
    ret += HPDF_Dict_Add (intent, "Info", HPDF_String_New (pdf->mmgr, iccname, ((void*)0)));
    ret += HPDF_Dict_Add (intent, "DestOutputProfile ", iccdict);
    if ( ret != HPDF_OK) {
        HPDF_Dict_Free(intent);
        return ret;
    }


    intents = HPDF_Dict_GetItem (pdf->catalog, "OutputIntents", HPDF_OCLASS_ARRAY);
    if (intents == ((void*)0)) {
        intents = HPDF_Array_New (pdf->mmgr);
        if (intents) {
            HPDF_STATUS ret = HPDF_Dict_Add (pdf->catalog, "OutputIntents", intents);
            if (ret != HPDF_OK) {
                HPDF_CheckError (&pdf->error);
                return HPDF_Error_GetDetailCode (&pdf->error);
            }
        }
    }

    HPDF_Array_Add(intents,intent);
    return HPDF_Error_GetDetailCode (&pdf->error);
}
