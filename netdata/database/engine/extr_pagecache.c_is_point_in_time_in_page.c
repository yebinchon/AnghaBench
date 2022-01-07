
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
struct rrdeng_page_descr {scalar_t__ start_time; scalar_t__ end_time; } ;



__attribute__((used)) static inline int is_point_in_time_in_page(struct rrdeng_page_descr *descr, usec_t point_in_time)
{
    return (point_in_time >= descr->start_time && point_in_time <= descr->end_time);
}
