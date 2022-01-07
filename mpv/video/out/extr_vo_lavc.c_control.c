
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {int dummy; } ;


 int VO_NOTIMPL ;

__attribute__((used)) static int control(struct vo *vo, uint32_t request, void *data)
{
    return VO_NOTIMPL;
}
