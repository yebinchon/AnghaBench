
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int filter; scalar_t__ stream; } ;
typedef int HPDF_Xref ;
typedef TYPE_1__* HPDF_String ;
typedef scalar_t__ HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef TYPE_1__* HPDF_EmbeddedFile ;
typedef TYPE_1__* HPDF_Dict ;


 TYPE_1__* HPDF_DictStream_New (int ,int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_1__*,char*,TYPE_1__*) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_1__*,char*,char*) ;
 TYPE_1__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_FileReader_New (int ,char const*) ;
 scalar_t__ HPDF_OK ;
 int HPDF_STREAM_FILTER_FLATE_DECODE ;
 int HPDF_Stream_Free (scalar_t__) ;
 TYPE_1__* HPDF_String_New (int ,char const*,int *) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_1__*) ;

HPDF_EmbeddedFile
HPDF_EmbeddedFile_New (HPDF_MMgr mmgr,
                        HPDF_Xref xref,
                        const char *file)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Dict ef;
    HPDF_String name;
    HPDF_Dict eff;
    HPDF_Dict filestream;
    HPDF_Stream stream;

    ef = HPDF_Dict_New (mmgr);
    if (!ef)
        return ((void*)0);
    if (HPDF_Xref_Add (xref, ef) != HPDF_OK)
        return ((void*)0);

    filestream = HPDF_DictStream_New (mmgr, xref);
    if (!filestream)
        return ((void*)0);
    stream = HPDF_FileReader_New (mmgr, file);
    if (!stream)
        return ((void*)0);
    HPDF_Stream_Free(filestream->stream);
    filestream->stream = stream;
    filestream->filter = HPDF_STREAM_FILTER_FLATE_DECODE;

    eff = HPDF_Dict_New (mmgr);
    if (!eff)
        return ((void*)0);

    name = HPDF_String_New (mmgr, file, ((void*)0));
    if (!name)
        return ((void*)0);

    ret += HPDF_Dict_AddName (ef, "Type", "F");
    ret += HPDF_Dict_Add (ef, "F", name);
    ret += HPDF_Dict_Add (ef, "EF", eff);
    ret += HPDF_Dict_Add (eff, "F", filestream);

    if (ret != HPDF_OK)
        return ((void*)0);

    return ef;
}
