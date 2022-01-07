
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef scalar_t__ HANDLE ;


 int GetError () ;

WRes HandleToWRes(HANDLE h) { return (h != 0) ? 0 : GetError(); }
