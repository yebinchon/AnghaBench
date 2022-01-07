
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_range_type { ____Placeholder_video_range_type } video_range_type ;
typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;


 int AVCOL_RANGE_JPEG ;
 int VIDEO_RANGE_DEFAULT ;
 int VIDEO_RANGE_FULL ;

__attribute__((used)) static inline enum video_range_type convert_color_range(enum AVColorRange r)
{
 return r == AVCOL_RANGE_JPEG ? VIDEO_RANGE_FULL : VIDEO_RANGE_DEFAULT;
}
