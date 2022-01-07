
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_fixup_desc {int dummy; } ;
typedef int fixup ;
typedef int BOOL ;


 int COLOR_FIXUP_IDENTITY ;
 int memcmp (struct color_fixup_desc*,int *,int) ;

__attribute__((used)) static inline BOOL is_identity_fixup(struct color_fixup_desc fixup)
{
    return !memcmp(&fixup, &COLOR_FIXUP_IDENTITY, sizeof(fixup));
}
