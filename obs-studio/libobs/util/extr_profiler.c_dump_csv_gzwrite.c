
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {scalar_t__ len; int array; } ;


 int gzwrite (void*,int ,unsigned int) ;

__attribute__((used)) static void dump_csv_gzwrite(void *data, struct dstr *buffer)
{
 gzwrite(data, buffer->array, (unsigned)buffer->len);
}
