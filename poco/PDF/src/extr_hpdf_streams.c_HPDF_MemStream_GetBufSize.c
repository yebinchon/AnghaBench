
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf_siz; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ attr; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef TYPE_2__* HPDF_MemStreamAttr ;


 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_STREAM_MEMORY ;

HPDF_UINT
HPDF_MemStream_GetBufSize (HPDF_Stream stream)
{
    HPDF_MemStreamAttr attr;

    HPDF_PTRACE((" HPDF_MemStream_GetBufSize\n"));

    if (!stream || stream->type != HPDF_STREAM_MEMORY)
        return 0;

    attr = (HPDF_MemStreamAttr)stream->attr;
    return attr->buf_siz;
}
