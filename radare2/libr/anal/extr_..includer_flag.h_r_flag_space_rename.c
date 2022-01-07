
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spaces; } ;
typedef TYPE_1__ RFlag ;


 int r_spaces_rename (int *,char const*,char const*) ;

__attribute__((used)) static inline bool r_flag_space_rename(RFlag *f, const char *oname, const char *nname) {
 return r_spaces_rename (&f->spaces, oname, nname);
}
