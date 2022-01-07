
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int xml_elem_writefunc(int (*fptr)(void *data, const char *text, int size), const char *text, void *data, int len)
{
   return fptr && text ? fptr(data, text, len ? len : strlen(text)) : 0;
}
