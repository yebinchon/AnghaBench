
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lwan_status_type { ____Placeholder_lwan_status_type } lwan_status_type ;


 int STATUS_NONE ;
 scalar_t__ use_colors ;

__attribute__((used)) static int status_index(enum lwan_status_type type)
{
    return use_colors ? (int)type : STATUS_NONE;
}
