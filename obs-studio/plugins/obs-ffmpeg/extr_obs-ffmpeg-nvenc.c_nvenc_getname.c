
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;

__attribute__((used)) static const char *nvenc_getname(void *unused)
{
 UNUSED_PARAMETER(unused);
 return "NVIDIA NVENC H.264";
}
