
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;


 int strncmp (int ,char*,int) ;

__attribute__((used)) static int vhci_hcd_filter(const struct dirent *dirent)
{
 return !strncmp(dirent->d_name, "vhci_hcd.", 9);
}
