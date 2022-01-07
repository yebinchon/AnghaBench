
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num; scalar_t__ den; } ;
typedef TYPE_1__ AVRational ;


 TYPE_1__ AV_TIME_BASE_Q ;

__attribute__((used)) static AVRational get_def_tb(AVRational *tb)
{
    return tb && tb->num > 0 && tb->den > 0 ? *tb : AV_TIME_BASE_Q;
}
