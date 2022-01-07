
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterPad ;


 int avfilter_pad_count (int const*) ;
 int avfilter_pad_get_type (int const*,int ) ;

__attribute__((used)) static bool is_single_media_only(const AVFilterPad *pads, int media_type)
{
    int count = avfilter_pad_count(pads);
    if (count != 1)
        return 0;
    return avfilter_pad_get_type(pads, 0) == media_type;
}
