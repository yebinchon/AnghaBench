
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dec3n {scalar_t__ w; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef int UINT ;
typedef scalar_t__ INT ;
typedef int const FLOAT ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ abs (scalar_t__) ;
 struct dec3n dword_to_dec3n (int ) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static BOOL weld_dec3n(void *to, void *from, FLOAT epsilon)
{
    const UINT MAX_DEC3N = 511;
    DWORD *d1 = to;
    DWORD *d2 = from;
    struct dec3n v1 = dword_to_dec3n(*d1);
    struct dec3n v2 = dword_to_dec3n(*d2);
    INT scaled_epsilon = (INT)(epsilon * MAX_DEC3N);
    INT diff_x = abs(v1.x - v2.x);
    INT diff_y = abs(v1.y - v2.y);
    INT diff_z = abs(v1.z - v2.z);
    INT diff_w = abs(v1.w - v2.w);
    INT max_abs_diff = max(diff_x, diff_y);
    max_abs_diff = max(diff_z, max_abs_diff);
    max_abs_diff = max(diff_w, max_abs_diff);

    if (max_abs_diff <= scaled_epsilon)
    {
        memcpy(to, from, sizeof(DWORD));

        return TRUE;
    }

    return FALSE;
}
