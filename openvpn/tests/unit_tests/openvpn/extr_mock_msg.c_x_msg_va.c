
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 unsigned int const M_FATAL ;
 int fatal_error_triggered ;
 int printf (char*) ;
 int vprintf (char const*,int ) ;

void
x_msg_va(const unsigned int flags, const char *format,
         va_list arglist)
{
    if (flags & M_FATAL)
    {
        fatal_error_triggered = 1;
        printf("FATAL ERROR:");
    }
    vprintf(format, arglist);
    printf("\n");
}
