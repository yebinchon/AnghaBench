
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buf_siz; scalar_t__ w_pos; int * w_ptr; int buf; } ;
struct TYPE_4__ {int error; int mmgr; int attr; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_MemStreamAttr ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_FreeMem (int ,int *) ;
 scalar_t__ HPDF_GetMem (int ,scalar_t__) ;
 scalar_t__ HPDF_List_Add (int ,int *) ;
 int HPDF_MemCpy (int *,int const*,scalar_t__) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_MemStream_InWrite (HPDF_Stream stream,
                         const HPDF_BYTE **ptr,
                         HPDF_UINT *count)
{
    HPDF_MemStreamAttr attr = (HPDF_MemStreamAttr)stream->attr;
    HPDF_UINT rsize = attr->buf_siz - attr->w_pos;

    HPDF_PTRACE((" HPDF_MemStream_InWrite\n"));

    if (*count <= 0)
        return HPDF_OK;

    if (rsize >= *count) {
        HPDF_MemCpy (attr->w_ptr, *ptr, *count);
        attr->w_ptr += *count;
        attr->w_pos += *count;
        *count = 0;
    } else {
        if (rsize > 0) {
            HPDF_MemCpy (attr->w_ptr, *ptr, rsize);
            *ptr += rsize;
            *count -= rsize;
        }
        attr->w_ptr = (HPDF_BYTE*)HPDF_GetMem (stream->mmgr, attr->buf_siz);

        if (attr->w_ptr == ((void*)0))
           return HPDF_Error_GetCode (stream->error);

        if (HPDF_List_Add (attr->buf, attr->w_ptr) != HPDF_OK) {
            HPDF_FreeMem (stream->mmgr, attr->w_ptr);
            attr->w_ptr = ((void*)0);

            return HPDF_Error_GetCode (stream->error);
        }
        attr->w_pos = 0;
    }
    return HPDF_OK;
}
