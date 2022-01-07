
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mp_format; int const* subtype; } ;
typedef int GUID ;


 int const KSDATAFORMAT_SPECIFIER_NONE ;
 TYPE_1__* wasapi_formats ;

__attribute__((used)) static const GUID *format_to_subtype(int format)
{
    for (int i = 0; wasapi_formats[i].mp_format; i++) {
        if (format == wasapi_formats[i].mp_format)
            return wasapi_formats[i].subtype;
    }
    return &KSDATAFORMAT_SPECIFIER_NONE;
}
