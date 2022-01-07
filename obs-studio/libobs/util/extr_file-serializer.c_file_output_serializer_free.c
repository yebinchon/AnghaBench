
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serializer {struct file_output_data* data; } ;
struct file_output_data {struct file_output_data* temp_name; struct file_output_data* file_name; int file; } ;


 int bfree (struct file_output_data*) ;
 int fclose (int ) ;
 int os_rename (struct file_output_data*,struct file_output_data*) ;
 int os_unlink (struct file_output_data*) ;

void file_output_serializer_free(struct serializer *s)
{
 struct file_output_data *out = s->data;

 if (out) {
  fclose(out->file);

  if (out->temp_name) {
   os_unlink(out->file_name);
   os_rename(out->temp_name, out->file_name);
  }

  bfree(out->file_name);
  bfree(out->temp_name);
  bfree(out);
 }
}
