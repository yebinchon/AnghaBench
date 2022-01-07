
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsstr_t ;
typedef int BOOL ;


 scalar_t__ JSSTR_INLINE ;
 scalar_t__ jsstr_tag (int *) ;

__attribute__((used)) static inline BOOL jsstr_is_inline(jsstr_t *str)
{
    return jsstr_tag(str) == JSSTR_INLINE;
}
