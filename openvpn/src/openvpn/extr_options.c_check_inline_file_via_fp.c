
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fp; } ;
struct in_src {TYPE_1__ u; int type; } ;
struct gc_arena {int dummy; } ;
typedef int FILE ;


 int IS_TYPE_FP ;
 int check_inline_file (struct in_src*,char**,struct gc_arena*) ;

__attribute__((used)) static bool
check_inline_file_via_fp(FILE *fp, char *p[], struct gc_arena *gc)
{
    struct in_src is;
    is.type = IS_TYPE_FP;
    is.u.fp = fp;
    return check_inline_file(&is, p, gc);
}
