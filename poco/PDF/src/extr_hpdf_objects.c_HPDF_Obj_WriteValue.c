
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int obj_class; } ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef TYPE_1__ HPDF_Obj_Header ;
typedef int HPDF_Encrypt ;


 int HPDF_Array_Write (void*,int ,int ) ;
 int HPDF_Binary_Write (void*,int ,int ) ;
 int HPDF_Boolean_Write (void*,int ) ;
 int HPDF_Dict_Write (void*,int ,int ) ;
 int HPDF_ERR_UNKNOWN_CLASS ;
 int HPDF_Name_Write (void*,int ) ;
 int HPDF_Number_Write (void*,int ) ;
 int HPDF_OCLASS_ANY ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Real_Write (void*,int ) ;
 int HPDF_Stream_WriteStr (int ,char*) ;
 int HPDF_String_Write (void*,int ,int ) ;

HPDF_STATUS
HPDF_Obj_WriteValue (void *obj,
                      HPDF_Stream stream,
                      HPDF_Encrypt e)
{
    HPDF_Obj_Header *header;
    HPDF_STATUS ret;

    HPDF_PTRACE((" HPDF_Obj_WriteValue\n"));

    header = (HPDF_Obj_Header *)obj;

    HPDF_PTRACE((" HPDF_Obj_WriteValue obj=0x%08X obj_class=0x%04X\n",
            (HPDF_UINT)obj, (HPDF_UINT)header->obj_class));

    switch (header->obj_class & HPDF_OCLASS_ANY) {
        case 132:
            ret = HPDF_Name_Write (obj, stream);
            break;
        case 130:
            ret = HPDF_Number_Write (obj, stream);
            break;
        case 129:
            ret = HPDF_Real_Write (obj, stream);
            break;
        case 128:
            ret = HPDF_String_Write (obj, stream, e);
            break;
        case 135:
            ret = HPDF_Binary_Write (obj, stream, e);
            break;
        case 136:
            ret = HPDF_Array_Write (obj, stream, e);
            break;
        case 133:
            ret = HPDF_Dict_Write (obj, stream, e);
            break;
        case 134:
            ret = HPDF_Boolean_Write (obj, stream);
            break;
        case 131:
            ret = HPDF_Stream_WriteStr (stream, "null");
            break;
        default:
            ret = HPDF_ERR_UNKNOWN_CLASS;
    }

    return ret;
}
