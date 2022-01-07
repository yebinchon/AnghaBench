
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int mmgr; int error; } ;
struct TYPE_9__ {int error; } ;
typedef int HPDF_UINT16 ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Stream ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_Image ;
typedef int HPDF_BYTE ;
typedef int HPDF_Array ;


 char* COL_CMYK ;
 char* COL_GRAY ;
 char* COL_RGB ;
 scalar_t__ HPDF_Array_Add (int ,int ) ;
 int HPDF_Array_New (int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_2__*,char*,int ) ;
 scalar_t__ HPDF_Dict_AddNumber (TYPE_2__*,char*,int) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_INVALID_JPEG_DATA ;
 int HPDF_Name_New (int ,char const*) ;
 int HPDF_Number_New (int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SEEK_CUR ;
 scalar_t__ HPDF_SetError (int ,int ,int ) ;
 scalar_t__ HPDF_Stream_Read (TYPE_1__*,int*,int*) ;
 scalar_t__ HPDF_Stream_Seek (TYPE_1__*,int,int ) ;
 int HPDF_UInt16Swap (int*) ;
 int HPDF_UNSUPPORTED_JPEG_FORMAT ;

__attribute__((used)) static HPDF_STATUS
LoadJpegHeader (HPDF_Image image,
                HPDF_Stream stream)
{
    HPDF_UINT16 tag;
    HPDF_UINT16 height;
    HPDF_UINT16 width;
    HPDF_BYTE precision;
    HPDF_BYTE num_components;
    const char *color_space_name;
    HPDF_UINT len;
    HPDF_STATUS ret;
    HPDF_Array array;

    HPDF_PTRACE ((" HPDF_Image_LoadJpegHeader\n"));

    len = 2;
    if (HPDF_Stream_Read (stream, (HPDF_BYTE *)&tag, &len) != HPDF_OK)
        return HPDF_Error_GetCode (stream->error);

    HPDF_UInt16Swap (&tag);
    if (tag != 0xFFD8)
        return HPDF_INVALID_JPEG_DATA;


    for (;;) {
        HPDF_UINT16 size;

        len = 2;
        if (HPDF_Stream_Read (stream, (HPDF_BYTE *)&tag, &len) != HPDF_OK)
            return HPDF_Error_GetCode (stream->error);

        HPDF_UInt16Swap (&tag);

        len = 2;
        if (HPDF_Stream_Read (stream, (HPDF_BYTE *)&size, &len) != HPDF_OK)
            return HPDF_Error_GetCode (stream->error);

        HPDF_UInt16Swap (&size);

        HPDF_PTRACE (("tag=%04X size=%u\n", tag, size));

        if (tag == 0xFFC0 || tag == 0xFFC1 ||
                tag == 0xFFC2 || tag == 0xFFC9) {

            len = 1;
            if (HPDF_Stream_Read (stream, (HPDF_BYTE *)&precision, &len) !=
                    HPDF_OK)
                return HPDF_Error_GetCode (stream->error);

            len = 2;
            if (HPDF_Stream_Read (stream, (HPDF_BYTE *)&height, &len) !=
                    HPDF_OK)
                return HPDF_Error_GetCode (stream->error);

            HPDF_UInt16Swap (&height);

            len = 2;
            if (HPDF_Stream_Read (stream, (HPDF_BYTE *)&width, &len) != HPDF_OK)
                return HPDF_Error_GetCode (stream->error);

             HPDF_UInt16Swap (&width);

           len = 1;
            if (HPDF_Stream_Read (stream, (HPDF_BYTE *)&num_components, &len) !=
                    HPDF_OK)
                return HPDF_Error_GetCode (stream->error);

            break;
        } else if ((tag | 0x00FF) != 0xFFFF)

            return HPDF_SetError (image->error, HPDF_UNSUPPORTED_JPEG_FORMAT,
                    0);

        if (HPDF_Stream_Seek (stream, size - 2, HPDF_SEEK_CUR) != HPDF_OK)
                return HPDF_Error_GetCode (stream->error);
    }

    if (HPDF_Dict_AddNumber (image, "Height", height) != HPDF_OK)
        return HPDF_Error_GetCode (stream->error);

    if (HPDF_Dict_AddNumber (image, "Width", width) != HPDF_OK)
        return HPDF_Error_GetCode (stream->error);







    switch (num_components) {
        case 1:
            color_space_name = COL_GRAY;
            break;
        case 3:
            color_space_name = COL_RGB;
            break;
        case 4:
            array = HPDF_Array_New (image->mmgr);
            if (!array)
                return HPDF_Error_GetCode (stream->error);

            ret = HPDF_Dict_Add (image, "Decode", array);
            if (ret != HPDF_OK)
                return HPDF_Error_GetCode (stream->error);

            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 1));
            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 0));
            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 1));
            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 0));
            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 1));
            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 0));
            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 1));
            ret += HPDF_Array_Add (array, HPDF_Number_New (image->mmgr, 0));

            if (ret != HPDF_OK)
                return HPDF_Error_GetCode (stream->error);

            color_space_name = COL_CMYK;

            break;
        default:
            return HPDF_SetError (image->error, HPDF_UNSUPPORTED_JPEG_FORMAT,
                    0);
    }

    if (HPDF_Dict_Add (image, "ColorSpace",
                HPDF_Name_New (image->mmgr, color_space_name)) != HPDF_OK)
        return HPDF_Error_GetCode (stream->error);

    if (HPDF_Dict_Add (image, "BitsPerComponent",
                HPDF_Number_New (image->mmgr, precision)) != HPDF_OK)
        return HPDF_Error_GetCode (stream->error);

    return HPDF_OK;
}
