
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int BOOL ;


 int PSD_INHUNDREDTHSOFMILLIMETERS ;
 int pagesetup_get_flags (int const*) ;

__attribute__((used)) static inline BOOL is_metric(const pagesetup_data *data)
{
    return pagesetup_get_flags(data) & PSD_INHUNDREDTHSOFMILLIMETERS;
}
