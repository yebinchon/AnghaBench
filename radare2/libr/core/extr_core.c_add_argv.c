
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef int RLineCompletion ;
typedef TYPE_1__ RFlagItem ;


 int r_line_completion_push (int *,int ) ;

__attribute__((used)) static bool add_argv(RFlagItem *fi, void *user) {
 RLineCompletion *completion = user;
 r_line_completion_push (completion, fi->name);
 return 1;
}
