
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int upper; int lower; } ;
typedef TYPE_1__ RANGE ;


 char const* wine_dbg_sprintf (char*,int ,int ) ;

__attribute__((used)) static inline const char* debugrange(const RANGE *lprng)
{
    if (!lprng) return "(null)";
    return wine_dbg_sprintf("[%d, %d]", lprng->lower, lprng->upper);
}
