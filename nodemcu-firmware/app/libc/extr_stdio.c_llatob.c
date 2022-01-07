
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;


 int _atob (int *,char*,int) ;
 char* _getbase (char*,int*) ;

int
llatob(u_quad_t *vp, char *p, int base)
{
    if (base == 0)
        p = _getbase (p, &base);
    return _atob(vp, p, base);
}
