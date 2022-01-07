
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int terminate; } ;
struct vo {struct vo_internal* in; } ;



__attribute__((used)) static void terminate_vo(void *p)
{
    struct vo *vo = p;
    struct vo_internal *in = vo->in;
    in->terminate = 1;
}
