
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_fixup_desc {unsigned int member_0; unsigned int member_2; unsigned int member_4; unsigned int member_6; int member_7; int member_5; int member_3; int member_1; } ;
typedef enum complex_fixup { ____Placeholder_complex_fixup } complex_fixup ;


 int CHANNEL_SOURCE_COMPLEX0 ;
 int CHANNEL_SOURCE_COMPLEX1 ;

__attribute__((used)) static inline struct color_fixup_desc create_complex_fixup_desc(enum complex_fixup complex_fixup)
{
    struct color_fixup_desc fixup =
    {
        0u, complex_fixup & (1u << 0) ? CHANNEL_SOURCE_COMPLEX1 : CHANNEL_SOURCE_COMPLEX0,
        0u, complex_fixup & (1u << 1) ? CHANNEL_SOURCE_COMPLEX1 : CHANNEL_SOURCE_COMPLEX0,
        0u, complex_fixup & (1u << 2) ? CHANNEL_SOURCE_COMPLEX1 : CHANNEL_SOURCE_COMPLEX0,
        0u, complex_fixup & (1u << 3) ? CHANNEL_SOURCE_COMPLEX1 : CHANNEL_SOURCE_COMPLEX0,
    };
    return fixup;
}
