
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

__attribute__((used)) static inline bool object_signalled(HANDLE event)
{
 if (!event)
  return 0;

 return WaitForSingleObject(event, 0) == WAIT_OBJECT_0;
}
