
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_value {int dummy; } ;
typedef enum lwan_status_type { ____Placeholder_lwan_status_type } lwan_status_type ;


 struct lwan_value* start_colors ;
 size_t status_index (int) ;

__attribute__((used)) static inline struct lwan_value start_color(enum lwan_status_type type)
{
    return start_colors[status_index(type)];
}
