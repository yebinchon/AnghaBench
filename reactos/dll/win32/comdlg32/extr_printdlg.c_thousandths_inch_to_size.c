
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int LONG ;


 scalar_t__ is_metric (int const*) ;

__attribute__((used)) static inline LONG thousandths_inch_to_size(const pagesetup_data *data, LONG size)
{
    if (is_metric(data))
        return size * 254 / 100;
    else
        return size;
}
