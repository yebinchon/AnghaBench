
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int WCHAR ;


 int devnames_driver_name ;
 int * pagesetup_get_a_devname (int const*,int ) ;

__attribute__((used)) static WCHAR *pagesetup_get_drvname(const pagesetup_data *data)
{
    return pagesetup_get_a_devname(data, devnames_driver_name);
}
