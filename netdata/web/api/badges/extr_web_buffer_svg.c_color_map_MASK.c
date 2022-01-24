#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct badge_color {char const* name; scalar_t__ hash; char const* color; } ;

/* Variables and functions */
 struct badge_color* badge_colors ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline const char *FUNC3(const char *color) {
    static int max = -1;
    int i;

    if(FUNC2(max == -1)) {
        for(i = 0; badge_colors[i].name ;i++)
            badge_colors[i].hash = FUNC0(badge_colors[i].name);

        max = i;
    }

    uint32_t hash = FUNC0(color);

    for(i = 0; i < max; i++) {
        struct badge_color *ptr = &badge_colors[i];

        if(hash == ptr->hash && !FUNC1(color, ptr->name))
            return ptr->color;
    }

    return color;
}