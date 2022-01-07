
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int len; int array; } ;


 int fwrite (int ,int,int ,void*) ;

__attribute__((used)) static void dump_csv_fwrite(void *data, struct dstr *buffer)
{
 fwrite(buffer->array, 1, buffer->len, data);
}
