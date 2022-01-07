
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spaces; } ;
typedef TYPE_1__ RFlag ;


 int r_spaces_count (int *,char const*) ;

__attribute__((used)) static inline int r_flag_space_count(RFlag *f, const char *name) {
 return r_spaces_count (&f->spaces, name);
}
