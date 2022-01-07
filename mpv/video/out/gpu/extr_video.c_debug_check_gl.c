
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gl_video {TYPE_2__* ra; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int (* debug_marker ) (TYPE_2__*,char const*) ;} ;


 int stub1 (TYPE_2__*,char const*) ;

__attribute__((used)) static void debug_check_gl(struct gl_video *p, const char *msg)
{
    if (p->ra->fns->debug_marker)
        p->ra->fns->debug_marker(p->ra, msg);
}
