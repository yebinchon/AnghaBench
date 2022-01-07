
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Flags; int FormatID; } ;
struct image_codec {TYPE_1__ info; } ;
struct TYPE_5__ {int format; } ;
typedef int GpStatus ;
typedef TYPE_2__ GpImage ;


 int GenericError ;
 int ImageCodecFlagsDecoder ;
 scalar_t__ IsEqualIID (int *,int *) ;
 int NUM_CODECS ;
 int Ok ;
 int TRACE (char*,int ) ;
 struct image_codec* codecs ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static GpStatus get_decoder_info_from_image(GpImage *image, const struct image_codec **result)
{
    int i;

    for (i = 0; i < NUM_CODECS; i++) {
        if ((codecs[i].info.Flags & ImageCodecFlagsDecoder) &&
                IsEqualIID(&codecs[i].info.FormatID, &image->format))
        {
            *result = &codecs[i];
            return Ok;
        }
    }

    TRACE("no match for format: %s\n", wine_dbgstr_guid(&image->format));
    return GenericError;
}
