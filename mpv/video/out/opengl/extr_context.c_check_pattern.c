
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {size_t last_pattern; int mismatches; int matches; TYPE_1__* opts; } ;
struct TYPE_2__ {int* vsync_pattern; } ;


 int MP_WARN (struct priv*,char*,int,int,int ,int ) ;

__attribute__((used)) static void check_pattern(struct priv *p, int item)
{
    int expected = p->opts->vsync_pattern[p->last_pattern];
    if (item == expected) {
        p->last_pattern++;
        if (p->last_pattern >= 2)
            p->last_pattern = 0;
        p->matches++;
    } else {
        p->mismatches++;
        MP_WARN(p, "wrong pattern, expected %d got %d (hit: %d, mis: %d)\n",
                expected, item, p->matches, p->mismatches);
    }
}
