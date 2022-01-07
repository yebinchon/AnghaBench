
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_output_data {int file; } ;


 size_t fwrite (void const*,int,size_t,int ) ;

__attribute__((used)) static size_t file_output_write(void *sdata, const void *data, size_t size)
{
 struct file_output_data *out = sdata;
 return fwrite(data, 1, size, out->file);
}
