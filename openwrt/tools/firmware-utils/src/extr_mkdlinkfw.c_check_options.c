
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ file_name; } ;


 int get_file_stat (TYPE_1__*) ;
 TYPE_1__ inspect_info ;

__attribute__((used)) static int check_options(void)
{
 int ret;

 if (inspect_info.file_name) {
  ret = get_file_stat(&inspect_info);
  if (ret)
   return ret;

  return 0;
 }

 return 0;
}
