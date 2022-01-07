
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int hard_cfg_size; int hard_cfg_data; } ;


 int ENOENT ;
 TYPE_1__ rb_info ;
 int routerboot_find_tag (int ,int ,int ,int **,int *) ;

__attribute__((used)) static inline int
rb_find_hard_cfg_tag(u16 tag_id, u8 **tag_data, u16 *tag_len)
{
 if (!rb_info.hard_cfg_data ||
     !rb_info.hard_cfg_size)
  return -ENOENT;

 return routerboot_find_tag(rb_info.hard_cfg_data,
       rb_info.hard_cfg_size,
       tag_id, tag_data, tag_len);
}
