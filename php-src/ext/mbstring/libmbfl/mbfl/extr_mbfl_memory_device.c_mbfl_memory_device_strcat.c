
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbfl_memory_device ;


 int mbfl_memory_device_strncat (int *,char const*,int ) ;
 int strlen (char const*) ;

int
mbfl_memory_device_strcat(mbfl_memory_device *device, const char *psrc)
{
 return mbfl_memory_device_strncat(device, psrc, strlen(psrc));
}
