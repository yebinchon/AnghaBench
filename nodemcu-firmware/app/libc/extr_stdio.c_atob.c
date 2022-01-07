
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_quad_t ;


 scalar_t__ _atob (int *,char*,int) ;
 char* _getbase (char*,int*) ;

int
atob(uint32_t *vp, char *p, int base)
{
    u_quad_t v;

    if (base == 0)
        p = _getbase (p, &base);
    if (_atob (&v, p, base)) {
        *vp = v;
        return (1);
    }
    return (0);
}
