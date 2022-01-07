
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int) ;

void osd_get_function_sym(char *buffer, size_t buffer_size, int osd_function)
{


    snprintf(buffer, buffer_size, "\xFF%c", osd_function);
}
