
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef TYPE_1__ RCore ;


 int r_sign_add_comment (int ,char const*,char const*) ;

__attribute__((used)) static bool addCommentZign(RCore *core, const char *name, const char *args0, int nargs) {
 const char *comment = args0;
 return r_sign_add_comment (core->anal, name, comment);
}
