
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef int SOCKET ;


 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_TYPE ;
 scalar_t__ getsockopt (int ,int ,int ,char*,int*) ;

__attribute__((used)) static int
isDataGram(SOCKET s)
{
 int type;
 int typelen = sizeof(type);

 if (getsockopt(s, SOL_SOCKET, SO_TYPE, (char *) &type, &typelen))
  return 1;

 return (type == SOCK_DGRAM) ? 1 : 0;
}
