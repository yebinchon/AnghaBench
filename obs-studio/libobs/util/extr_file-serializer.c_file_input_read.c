
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t fread (void*,int,size_t,void*) ;

__attribute__((used)) static size_t file_input_read(void *file, void *data, size_t size)
{
 return fread(data, 1, size, file);
}
