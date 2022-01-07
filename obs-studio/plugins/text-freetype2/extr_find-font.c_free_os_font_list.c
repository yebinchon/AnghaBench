
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num; scalar_t__ array; } ;


 int da_free (TYPE_1__) ;
 TYPE_1__ font_list ;
 int font_path_info_free (scalar_t__) ;

void free_os_font_list(void)
{
 for (size_t i = 0; i < font_list.num; i++)
  font_path_info_free(font_list.array + i);
 da_free(font_list);
}
