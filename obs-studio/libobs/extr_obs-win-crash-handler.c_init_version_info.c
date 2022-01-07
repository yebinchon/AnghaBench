
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_handler_data {int win_version; } ;


 int get_win_ver (int *) ;

__attribute__((used)) static inline void init_version_info(struct exception_handler_data *data)
{
 get_win_ver(&data->win_version);
}
