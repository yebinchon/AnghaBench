
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int r_ptr_idx; int buf_siz; scalar_t__ r_pos; } ;
struct TYPE_4__ {int attr; } ;
typedef TYPE_1__* HPDF_Stream ;
typedef TYPE_2__* HPDF_MemStreamAttr ;
typedef int HPDF_INT32 ;


 int HPDF_PTRACE (char*) ;

HPDF_INT32
HPDF_MemStream_TellFunc (HPDF_Stream stream)
{
    HPDF_INT32 ret;
    HPDF_MemStreamAttr attr = (HPDF_MemStreamAttr)stream->attr;

    HPDF_PTRACE((" HPDF_MemStream_TellFunc\n"));

    ret = attr->r_ptr_idx * attr->buf_siz;
    ret += attr->r_pos;

    return ret;
}
