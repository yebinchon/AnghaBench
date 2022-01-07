
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t tuklib_mbstr_width (char const*,size_t*) ;

extern int
tuklib_mbstr_fw(const char *str, int columns_min)
{
 size_t len;
 const size_t width = tuklib_mbstr_width(str, &len);
 if (width == (size_t)-1)
  return -1;

 if (width > (size_t)columns_min)
  return 0;

 if (width < (size_t)columns_min)
  len += (size_t)columns_min - width;

 return len;
}
