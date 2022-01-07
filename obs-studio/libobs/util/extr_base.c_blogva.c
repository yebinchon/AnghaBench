
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int log_handler (int,char const*,int ,int ) ;
 int log_param ;

void blogva(int log_level, const char *format, va_list args)
{
 log_handler(log_level, format, args, log_param);
}
