
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum stream_type { ____Placeholder_stream_type } stream_type ;
typedef int MPContext ;




 int reinit_audio_filters (int *) ;
 int reinit_video_filters (int *) ;

__attribute__((used)) static bool reinit_filters(MPContext *mpctx, enum stream_type mediatype)
{
    switch (mediatype) {
    case 128:
        return reinit_video_filters(mpctx) >= 0;
    case 129:
        return reinit_audio_filters(mpctx) >= 0;
    }
    return 0;
}
