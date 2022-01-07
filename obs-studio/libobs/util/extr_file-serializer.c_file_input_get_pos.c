
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int os_ftelli64 (void*) ;

__attribute__((used)) static int64_t file_input_get_pos(void *file)
{
 return os_ftelli64(file);
}
