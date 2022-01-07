
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;


 int mp_print_version (struct mp_log*,int) ;

__attribute__((used)) static void print_version(struct mp_log *log)
{
    mp_print_version(log, 1);
}
