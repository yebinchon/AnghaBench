
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StdMediaSample2 ;


 int CoTaskMemFree (int *) ;

__attribute__((used)) static void StdMediaSample2_Delete(StdMediaSample2 * This)
{

    CoTaskMemFree(This);
}
