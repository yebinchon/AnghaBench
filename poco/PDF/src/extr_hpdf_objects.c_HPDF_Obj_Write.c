
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int obj_id; scalar_t__ obj_class; int gen_no; } ;
struct TYPE_3__ {scalar_t__ obj; } ;
typedef int HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Proxy ;
typedef TYPE_2__ HPDF_Obj_Header ;
typedef int HPDF_Encrypt ;


 char* HPDF_IToA (char*,int,char*) ;
 scalar_t__ HPDF_OCLASS_PROXY ;
 int HPDF_OK ;
 int HPDF_OTYPE_HIDDEN ;
 int HPDF_Obj_WriteValue (void*,int ,int ) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SHORT_BUF_SIZ ;
 int HPDF_StrCpy (char*,char*,char*) ;
 int HPDF_Stream_WriteStr (int ,char*) ;

HPDF_STATUS
HPDF_Obj_Write (void *obj,
                 HPDF_Stream stream,
                 HPDF_Encrypt e)
{
    HPDF_Obj_Header *header = (HPDF_Obj_Header *)obj;

    HPDF_PTRACE((" HPDF_Obj_Write\n"));

    if (header->obj_id & HPDF_OTYPE_HIDDEN) {
         HPDF_PTRACE(("#HPDF_Obj_Write obj=0x%08X skipped\n", (HPDF_UINT)obj));
         return HPDF_OK;
    }

    if (header->obj_class == HPDF_OCLASS_PROXY) {
        char buf[HPDF_SHORT_BUF_SIZ];
        char *pbuf = buf;
        char *eptr = buf + HPDF_SHORT_BUF_SIZ - 1;
        HPDF_Proxy p = obj;

        header = (HPDF_Obj_Header*)p->obj;

        pbuf = HPDF_IToA (pbuf, header->obj_id & 0x00FFFFFF, eptr);
        *pbuf++ = ' ';
        pbuf = HPDF_IToA (pbuf, header->gen_no, eptr);
        HPDF_StrCpy(pbuf, " R", eptr);

        return HPDF_Stream_WriteStr(stream, buf);
    }

    return HPDF_Obj_WriteValue(obj, stream, e);
}
