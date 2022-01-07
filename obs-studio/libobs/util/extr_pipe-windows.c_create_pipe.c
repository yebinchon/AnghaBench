
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sa ;
struct TYPE_3__ {int nLength; int bInheritHandle; int member_0; } ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef int HANDLE ;


 int CreatePipe (int *,int *,TYPE_1__*,int ) ;

__attribute__((used)) static bool create_pipe(HANDLE *input, HANDLE *output)
{
 SECURITY_ATTRIBUTES sa = {0};

 sa.nLength = sizeof(sa);
 sa.bInheritHandle = 1;

 if (!CreatePipe(input, output, &sa, 0)) {
  return 0;
 }

 return 1;
}
