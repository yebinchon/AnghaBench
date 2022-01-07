
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rrdeng_page_info {int * scratch; } ;



__attribute__((used)) static inline uint32_t *pginfo_to_dt(struct rrdeng_page_info *page_info)
{
    return (uint32_t *)&page_info->scratch[0];
}
