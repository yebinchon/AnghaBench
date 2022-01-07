
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef int RLineCompletion ;
typedef TYPE_1__ RCore ;


 int add_argv ;
 int r_flag_foreach_prefix (int ,char const*,int,int ,int *) ;
 int r_return_if_fail (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void autocomplete_flags(RCore *core, RLineCompletion *completion, const char* str) {
 r_return_if_fail (str);
 int n = strlen (str);
 r_flag_foreach_prefix (core->flags, str, n, add_argv, completion);
}
