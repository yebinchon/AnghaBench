
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
typedef int HPDF_UINT32 ;
typedef TYPE_1__* HPDF_Stream ;


 int HPDF_PTRACE (char*) ;

HPDF_UINT32
HPDF_MemStream_SizeFunc (HPDF_Stream stream)
{
    HPDF_PTRACE((" HPDF_MemStream_SizeFunc\n"));

    return stream->size;
}
