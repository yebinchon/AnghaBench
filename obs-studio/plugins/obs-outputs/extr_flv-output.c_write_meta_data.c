
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct flv_output {int file; int output; } ;


 int bfree (int *) ;
 int flv_meta_data (int ,int **,size_t*,int,int ) ;
 int fwrite (int *,int,size_t,int ) ;

__attribute__((used)) static void write_meta_data(struct flv_output *stream)
{
 uint8_t *meta_data;
 size_t meta_data_size;

 flv_meta_data(stream->output, &meta_data, &meta_data_size, 1, 0);
 fwrite(meta_data, 1, meta_data_size, stream->file);
 bfree(meta_data);
}
