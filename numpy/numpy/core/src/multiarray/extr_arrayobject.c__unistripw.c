
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_ucs4 ;


 scalar_t__ NumPyOS_ascii_isspace (int) ;

__attribute__((used)) static void _unistripw(npy_ucs4 *s, int n)
{
    int i;
    for (i = n - 1; i >= 1; i--) {
        npy_ucs4 c = s[i];
        if (!c || NumPyOS_ascii_isspace((int)c)) {
            s[i] = 0;
        }
        else {
            break;
        }
    }
}
