
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_output_data {int file; } ;
typedef int int64_t ;


 int os_ftelli64 (int ) ;

__attribute__((used)) static int64_t file_output_get_pos(void *sdata)
{
 struct file_output_data *out = sdata;
 return os_ftelli64(out->file);
}
