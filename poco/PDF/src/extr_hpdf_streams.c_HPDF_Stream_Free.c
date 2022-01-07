
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mmgr; scalar_t__ sig_bytes; int (* free_fn ) (TYPE_1__*) ;} ;
typedef TYPE_1__* HPDF_Stream ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void
HPDF_Stream_Free (HPDF_Stream stream)
{
    if (!stream)
        return;

    if (stream->free_fn)
        stream->free_fn(stream);

    stream->sig_bytes = 0;

    HPDF_FreeMem(stream->mmgr, stream);
}
