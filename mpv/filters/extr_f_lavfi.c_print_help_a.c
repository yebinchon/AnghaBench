
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int AVMEDIA_TYPE_AUDIO ;
 int print_help (struct mp_log*,int ,char*,char*) ;

__attribute__((used)) static void print_help_a(struct mp_log *log)
{
    print_help(log, AVMEDIA_TYPE_AUDIO, "audio", "--af=lavfi=[volume=0.5]");
}
