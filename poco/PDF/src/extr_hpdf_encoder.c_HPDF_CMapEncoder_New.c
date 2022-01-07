
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int sig_bytes; int init_fn; int free_fn; int write_fn; int to_unicode_fn; int byte_type_fn; int type; int error; TYPE_1__* mmgr; scalar_t__ name; } ;
struct TYPE_8__ {int error; } ;
typedef TYPE_1__* HPDF_MMgr ;
typedef int HPDF_Encoder_Rec ;
typedef int HPDF_Encoder_Init_Func ;
typedef TYPE_2__* HPDF_Encoder ;


 int HPDF_CMapEncoder_ByteType ;
 int HPDF_CMapEncoder_Free ;
 int HPDF_CMapEncoder_ToUnicode ;
 int HPDF_CMapEncoder_Write ;
 int HPDF_ENCODER_SIG_BYTES ;
 int HPDF_ENCODER_TYPE_UNINITIALIZED ;
 TYPE_2__* HPDF_GetMem (TYPE_1__*,int) ;
 scalar_t__ HPDF_LIMIT_MAX_NAME_LEN ;
 int HPDF_MemSet (TYPE_2__*,int ,int) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_StrCpy (scalar_t__,char*,scalar_t__) ;

HPDF_Encoder
HPDF_CMapEncoder_New (HPDF_MMgr mmgr,
                       char *name,
                       HPDF_Encoder_Init_Func init_fn)
{
    HPDF_Encoder encoder;

    HPDF_PTRACE ((" HPDF_CMapEncoder_New\n"));

    if (mmgr == ((void*)0))
        return ((void*)0);

    encoder = HPDF_GetMem (mmgr, sizeof(HPDF_Encoder_Rec));
    if (!encoder)
        return ((void*)0);

    HPDF_MemSet (encoder, 0, sizeof(HPDF_Encoder_Rec));

    HPDF_StrCpy (encoder->name, name, encoder->name + HPDF_LIMIT_MAX_NAME_LEN);
    encoder->mmgr = mmgr;
    encoder->error = mmgr->error;
    encoder->type = HPDF_ENCODER_TYPE_UNINITIALIZED;
    encoder->byte_type_fn = HPDF_CMapEncoder_ByteType;
    encoder->to_unicode_fn = HPDF_CMapEncoder_ToUnicode;
    encoder->write_fn = HPDF_CMapEncoder_Write;
    encoder->free_fn = HPDF_CMapEncoder_Free;
    encoder->init_fn = init_fn;
    encoder->sig_bytes = HPDF_ENCODER_SIG_BYTES;

    return encoder;
}
