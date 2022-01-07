
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outputs; int inputs; } ;
typedef TYPE_1__ AVFilter ;


 scalar_t__ is_single_media_only (int ,int) ;

__attribute__((used)) static bool is_usable(const AVFilter *filter, int media_type)
{
    return is_single_media_only(filter->inputs, media_type) &&
           is_single_media_only(filter->outputs, media_type);
}
