
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_format { ____Placeholder_video_format } video_format ;


 int VIDEO_FORMAT_I420 ;
 int VIDEO_FORMAT_I444 ;
 int VIDEO_FORMAT_NV12 ;

__attribute__((used)) static inline bool valid_format(enum video_format format)
{
 return format == VIDEO_FORMAT_I420 || format == VIDEO_FORMAT_NV12 ||
        format == VIDEO_FORMAT_I444;
}
