
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int state ;
typedef int mbstate_t ;


 size_t mbrtowc (int *,char const*,size_t const,int *) ;
 int mbsinit (int *) ;
 int memset (int *,int ,int) ;
 size_t strlen (char const*) ;
 int wcwidth (int ) ;

extern size_t
tuklib_mbstr_width(const char *str, size_t *bytes)
{
 const size_t len = strlen(str);
 if (bytes != ((void*)0))
  *bytes = len;




 return len;
}
