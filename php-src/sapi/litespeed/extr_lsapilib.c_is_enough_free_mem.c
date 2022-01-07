
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* s_avail_pages ;
 int s_min_avail_pages ;
 int s_total_pages ;

int is_enough_free_mem()
{


    return (*s_avail_pages > s_min_avail_pages
            || (*s_avail_pages * 10) / s_total_pages > 0);

    return 1;
}
