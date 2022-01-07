
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int THREAD_FUNC_TYPE ;
typedef int LPVOID ;
typedef int HANDLE ;
typedef int CThread ;


 int CreateThread (int ,int ,int ,int ,int ,unsigned int*) ;
 int HandleToWRes (int ) ;
 int _beginthreadex (int *,int ,int ,int ,int ,unsigned int*) ;

WRes Thread_Create(CThread *p, THREAD_FUNC_TYPE func, LPVOID param)
{
  unsigned threadId;
  *p =



    (HANDLE)_beginthreadex(((void*)0), 0, func, param, 0, &threadId);


  return HandleToWRes(*p);
}
