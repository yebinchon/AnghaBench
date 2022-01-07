
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_data {scalar_t__ last_error; } ;


 int bfree (scalar_t__) ;
 scalar_t__ bstrdup (char const*) ;

__attribute__((used)) static void ffmpeg_output_set_last_error(struct ffmpeg_data *data,
      const char *error)
{
 if (data->last_error)
  bfree(data->last_error);

 data->last_error = bstrdup(error);
}
