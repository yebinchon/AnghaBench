
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;



 int OSSL_TRACE2 (int ,char*,char const*,int ) ;


 int TRACE ;
 TYPE_1__* trace_categories ;

__attribute__((used)) static int trace_detach_cb(int category, int type, const void *data)
{
    switch (type) {
    case 130:
        OSSL_TRACE2(TRACE, "Detach channel %p from category '%s'\n",
                    data, trace_categories[category].name);
        break;
    case 129:
        OSSL_TRACE2(TRACE, "Detach prefix \"%s\" from category '%s'\n",
                    (const char *)data, trace_categories[category].name);
        break;
    case 128:
        OSSL_TRACE2(TRACE, "Detach suffix \"%s\" from category '%s'\n",
                    (const char *)data, trace_categories[category].name);
        break;
    default:
        break;
    }
    return 1;
}
