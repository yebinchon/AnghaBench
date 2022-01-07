
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_data {scalar_t__ type; int filter; int default_path; } ;


 scalar_t__ OBS_PATH_FILE ;
 int bfree (int ) ;

__attribute__((used)) static inline void path_data_free(struct path_data *data)
{
 bfree(data->default_path);
 if (data->type == OBS_PATH_FILE)
  bfree(data->filter);
}
