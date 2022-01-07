
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct update_info {int file_data; } ;


 int da_push_back_array (int ,int *,size_t) ;

__attribute__((used)) static size_t http_write(uint8_t *ptr, size_t size, size_t nmemb,
    struct update_info *info)
{
 size_t total = size * nmemb;
 if (total)
  da_push_back_array(info->file_data, ptr, total);

 return total;
}
