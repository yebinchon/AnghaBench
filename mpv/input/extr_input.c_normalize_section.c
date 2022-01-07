
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_ctx {int dummy; } ;
struct TYPE_2__ {char* section; } ;


 int bstr0 (char*) ;
 TYPE_1__* get_bind_section (struct input_ctx*,int ) ;

__attribute__((used)) static char *normalize_section(struct input_ctx *ictx, char *name)
{
    return get_bind_section(ictx, bstr0(name))->section;
}
