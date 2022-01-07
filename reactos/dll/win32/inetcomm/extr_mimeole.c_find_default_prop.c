
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; scalar_t__ name; } ;
typedef TYPE_1__ property_t ;


 scalar_t__ ISPIDSTR (char const*) ;
 scalar_t__ STRTOPID (char const*) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 TYPE_1__* default_props ;
 int lstrcmpiA (char const*,scalar_t__) ;

__attribute__((used)) static const property_t *find_default_prop(const char *name)
{
    const property_t *prop_def = ((void*)0);

    for(prop_def = default_props; prop_def->name; prop_def++)
    {
        if(ISPIDSTR(name))
        {
            if(STRTOPID(name) == prop_def->id)
            {
                break;
            }
        }
        else if(!lstrcmpiA(name, prop_def->name))
        {
            break;
        }
    }

    if(prop_def->id)
       TRACE("%s: found match with default property id %d\n", prop_def->name, prop_def->id);
    else
       prop_def = ((void*)0);

    return prop_def;
}
