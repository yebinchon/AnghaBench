
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pagesetup_data ;
typedef int DEVMODEW ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

__attribute__((used)) static void pagesetup_release_devmode(const pagesetup_data *data, DEVMODEW *dm)
{
    HeapFree(GetProcessHeap(), 0, dm);
}
