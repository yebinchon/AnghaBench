
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int const AUDIO_ELEMENTARY_STREAM ;
 int MPEG_AUDIO_HEADER ;
 int MPEG_NO_HEADER ;
 int MPEG_SYSTEM_HEADER ;
 int MPEG_VIDEO_HEADER ;
 int const PACK_START_CODE ;
 int const SEQUENCE_HEADER_CODE ;
 int const VIDEO_ELEMENTARY_STREAM ;

__attribute__((used)) static int MPEGSplitter_head_check(const BYTE *header)
{

    if (header[0] == 0 && header[1] == 0 && header[2] == 1)
    {

        if (header[3] == PACK_START_CODE ||
            header[3] == VIDEO_ELEMENTARY_STREAM ||
            header[3] == AUDIO_ELEMENTARY_STREAM)
            return MPEG_SYSTEM_HEADER;


        if (header[3] == SEQUENCE_HEADER_CODE)
            return MPEG_VIDEO_HEADER;
    }


    if(header[0] == 0xff && ((header[1]>>5)&0x7) == 0x7 &&
       ((header[1]>>1)&0x3) != 0 && ((header[2]>>4)&0xf) != 0xf &&
       ((header[2]>>2)&0x3) != 0x3)
        return MPEG_AUDIO_HEADER;


    return MPEG_NO_HEADER;
}
