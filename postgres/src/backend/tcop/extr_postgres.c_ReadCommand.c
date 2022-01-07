
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 scalar_t__ DestRemote ;
 int InteractiveBackend (int ) ;
 int SocketBackend (int ) ;
 scalar_t__ whereToSendOutput ;

__attribute__((used)) static int
ReadCommand(StringInfo inBuf)
{
 int result;

 if (whereToSendOutput == DestRemote)
  result = SocketBackend(inBuf);
 else
  result = InteractiveBackend(inBuf);
 return result;
}
