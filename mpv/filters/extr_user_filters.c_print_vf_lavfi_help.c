
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int AVMEDIA_TYPE_VIDEO ;
 int print_lavfi_help (struct mp_log*,char const*,int ) ;

__attribute__((used)) static void print_vf_lavfi_help(struct mp_log *log, const char *name)
{
    print_lavfi_help(log, name, AVMEDIA_TYPE_VIDEO);
}
