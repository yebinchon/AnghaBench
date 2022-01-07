
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct buffer* multiline; } ;
struct in_src {TYPE_1__ u; int type; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;


 int IS_TYPE_BUF ;
 int check_inline_file (struct in_src*,char**,struct gc_arena*) ;

__attribute__((used)) static bool
check_inline_file_via_buf(struct buffer *multiline, char *p[], struct gc_arena *gc)
{
    struct in_src is;
    is.type = IS_TYPE_BUF;
    is.u.multiline = multiline;
    return check_inline_file(&is, p, gc);
}
