
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int png_size_t ;
typedef int png_byte ;
struct TYPE_10__ {scalar_t__ error_no; } ;
struct TYPE_9__ {TYPE_5__* error; int mmgr; int stream; } ;
struct TYPE_8__ {scalar_t__ value; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_String ;
typedef int HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_Dict ;


 TYPE_1__* HPDF_Dict_GetItem (TYPE_2__*,char*,int ) ;
 int HPDF_FALSE ;
 int HPDF_FileReader_New (int ,char const*) ;
 int HPDF_INVALID_PNG_IMAGE ;
 int HPDF_MISSING_FILE_NAME_ENTRY ;
 int HPDF_MemSet (int *,int,int) ;
 int HPDF_MemStream_FreeData (int ) ;
 int HPDF_OCLASS_STRING ;
 scalar_t__ HPDF_OK ;
 int HPDF_PNG_BYTES_TO_CHECK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_SetError (TYPE_5__*,int ,int ) ;
 int HPDF_Stream_Free (int ) ;
 scalar_t__ HPDF_Stream_Read (int ,int *,int*) ;
 int HPDF_Stream_Validate (int ) ;
 scalar_t__ LoadPngData (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ png_sig_cmp (int *,int ,int) ;

__attribute__((used)) static HPDF_STATUS
PngBeforeWrite (HPDF_Dict obj)
{
    HPDF_STATUS ret;
    png_byte header[HPDF_PNG_BYTES_TO_CHECK];
    HPDF_UINT len = HPDF_PNG_BYTES_TO_CHECK;
    HPDF_Stream png_data;
    HPDF_String s;

    HPDF_PTRACE ((" PngBeforeWrite\n"));

    HPDF_MemStream_FreeData(obj->stream);

    s = HPDF_Dict_GetItem (obj, "_FILE_NAME", HPDF_OCLASS_STRING);
    if (!s)
        return HPDF_SetError (obj->error, HPDF_MISSING_FILE_NAME_ENTRY, 0);

    png_data = HPDF_FileReader_New (obj->mmgr, (const char *)(s->value));
    if (!HPDF_Stream_Validate (png_data))
        return obj->error->error_no;

    HPDF_MemSet (header, 0x00, HPDF_PNG_BYTES_TO_CHECK);
    ret = HPDF_Stream_Read (png_data, header, &len);
    if (ret != HPDF_OK ||
            png_sig_cmp (header, (png_size_t)0, HPDF_PNG_BYTES_TO_CHECK)) {
        HPDF_Stream_Free(png_data);
        return HPDF_SetError (obj->error, HPDF_INVALID_PNG_IMAGE, 0);
    }

    if ((ret = LoadPngData (obj, ((void*)0), png_data, HPDF_FALSE)) != HPDF_OK) {
        HPDF_Stream_Free(png_data);
        return ret;
    }

    HPDF_Stream_Free(png_data);

    return HPDF_OK;
}
