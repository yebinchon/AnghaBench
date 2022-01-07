
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int regex; } ;
typedef TYPE_1__ fltrexp_t ;


 scalar_t__ regexec (int ,char const*,int ,int *,int ) ;

__attribute__((used)) static int visible_re(const fltrexp_t *fltrexp, const char *fname)
{
 return regexec(fltrexp->regex, fname, 0, ((void*)0), 0) == 0;
}
