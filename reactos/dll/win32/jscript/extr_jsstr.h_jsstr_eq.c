
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int BOOL ;


 int jsstr_cmp (int *,int *) ;
 scalar_t__ jsstr_length (int *) ;

__attribute__((used)) static inline BOOL jsstr_eq(jsstr_t *left, jsstr_t *right)
{
    return jsstr_length(left) == jsstr_length(right) && !jsstr_cmp(left, right);
}
