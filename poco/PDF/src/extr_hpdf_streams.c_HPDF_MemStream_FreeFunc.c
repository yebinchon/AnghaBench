
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int buf; } ;
struct TYPE_6__ {int * attr; int mmgr; } ;
typedef TYPE_1__* HPDF_Stream ;
typedef TYPE_2__* HPDF_MemStreamAttr ;


 int HPDF_FreeMem (int ,TYPE_2__*) ;
 int HPDF_List_Free (int ) ;
 int HPDF_MemStream_FreeData (TYPE_1__*) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_MemStream_FreeFunc (HPDF_Stream stream)
{
    HPDF_MemStreamAttr attr;

    HPDF_PTRACE((" HPDF_MemStream_FreeFunc\n"));

    attr = (HPDF_MemStreamAttr)stream->attr;
    HPDF_MemStream_FreeData (stream);
    HPDF_List_Free (attr->buf);
    HPDF_FreeMem (stream->mmgr, attr);
    stream->attr = ((void*)0);
}
