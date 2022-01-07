
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_4__ {int default_len; } ;
typedef TYPE_1__ obs_data_item_t ;


 scalar_t__ get_default_data_ptr (TYPE_1__*) ;

__attribute__((used)) static inline void *get_autoselect_data_ptr(obs_data_item_t *item)
{
 return (uint8_t *)get_default_data_ptr(item) + item->default_len;
}
