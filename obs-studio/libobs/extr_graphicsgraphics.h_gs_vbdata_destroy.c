
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct gs_vb_data {size_t num_tex; struct gs_vb_data* tvarray; struct gs_vb_data* array; struct gs_vb_data* colors; struct gs_vb_data* tangents; struct gs_vb_data* normals; struct gs_vb_data* points; } ;


 int bfree (struct gs_vb_data*) ;

__attribute__((used)) static inline void gs_vbdata_destroy(struct gs_vb_data *data)
{
 uint32_t i;
 if (!data)
  return;

 bfree(data->points);
 bfree(data->normals);
 bfree(data->tangents);
 bfree(data->colors);
 for (i = 0; i < data->num_tex; i++)
  bfree(data->tvarray[i].array);
 bfree(data->tvarray);
 bfree(data);
}
