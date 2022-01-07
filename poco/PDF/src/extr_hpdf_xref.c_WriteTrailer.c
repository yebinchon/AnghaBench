
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int addr; int trailer; TYPE_1__* prev; scalar_t__ start_offset; TYPE_2__* entries; } ;
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
typedef TYPE_3__* HPDF_Xref ;
typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;


 int HPDF_Dict_AddNumber (int ,char*,scalar_t__) ;
 int HPDF_Dict_Write (int ,int ,int *) ;
 int HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Stream_WriteStr (int ,char*) ;
 int HPDF_Stream_WriteUInt (int ,int ) ;

__attribute__((used)) static HPDF_STATUS
WriteTrailer (HPDF_Xref xref,
               HPDF_Stream stream)
{
    HPDF_UINT max_obj_id = xref->entries->count + xref->start_offset;
    HPDF_STATUS ret;

    HPDF_PTRACE ((" WriteTrailer\n"));

    if ((ret = HPDF_Dict_AddNumber (xref->trailer, "Size", max_obj_id))
            != HPDF_OK)
        return ret;

    if (xref->prev)
        if ((ret = HPDF_Dict_AddNumber (xref->trailer, "Prev",
                xref->prev->addr)) != HPDF_OK)
            return ret;

    if ((ret = HPDF_Stream_WriteStr (stream, "trailer\012")) != HPDF_OK)
        return ret;

    if ((ret = HPDF_Dict_Write (xref->trailer, stream, ((void*)0))) != HPDF_OK)
        return ret;

    if ((ret = HPDF_Stream_WriteStr (stream, "\012startxref\012")) != HPDF_OK)
        return ret;

    if ((ret = HPDF_Stream_WriteUInt (stream, xref->addr)) != HPDF_OK)
        return ret;

    if ((ret = HPDF_Stream_WriteStr (stream, "\012%%EOF\012")) != HPDF_OK)
        return ret;

    return HPDF_OK;
}
