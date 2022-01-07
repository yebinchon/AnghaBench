
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int FindClose (int ) ;

int wceex_findclose(intptr_t hFile)
{
    if(!FindClose((HANDLE)hFile))
 {

        return (-1);
    }
    return (0);

}
