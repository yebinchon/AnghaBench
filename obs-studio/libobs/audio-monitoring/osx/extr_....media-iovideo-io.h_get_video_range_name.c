
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum video_range_type { ____Placeholder_video_range_type } video_range_type ;
typedef enum video_format { ____Placeholder_video_format } video_format ;


 int VIDEO_RANGE_FULL ;
 int resolve_video_range (int,int) ;

__attribute__((used)) static inline const char *get_video_range_name(enum video_format format,
            enum video_range_type range)
{
 range = resolve_video_range(format, range);
 return range == VIDEO_RANGE_FULL ? "Full" : "Partial";
}
