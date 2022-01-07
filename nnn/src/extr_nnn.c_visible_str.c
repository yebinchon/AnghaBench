
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; } ;
typedef TYPE_1__ fltrexp_t ;


 int * strcasestr (char const*,int ) ;

__attribute__((used)) static int visible_str(const fltrexp_t *fltrexp, const char *fname)
{
 return strcasestr(fname, fltrexp->str) != ((void*)0);
}
