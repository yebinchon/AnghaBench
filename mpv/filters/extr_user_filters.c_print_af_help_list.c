
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int AVMEDIA_TYPE_AUDIO ;
 int print_lavfi_help_list (struct mp_log*,int ) ;

__attribute__((used)) static void print_af_help_list(struct mp_log *log)
{
    print_lavfi_help_list(log, AVMEDIA_TYPE_AUDIO);
}
