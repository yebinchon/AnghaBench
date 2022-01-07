
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_input_src {int dummy; } ;


 int MP_VERBOSE (struct mp_input_src*,char*) ;

__attribute__((used)) static void uninit(struct mp_input_src *src)
{
    MP_VERBOSE(src, "exited.\n");
}
