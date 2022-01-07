
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int libbochs_t ;
typedef int HMODULE ;
typedef scalar_t__ DWORD ;


 int GetModuleHandle (int ) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 scalar_t__ RunRemoteThread_ (int *,int const*,int,int ,unsigned int*) ;
 int TEXT (char*) ;

bool bochs_cmd_stop(libbochs_t * b) {
 return 0;

}
