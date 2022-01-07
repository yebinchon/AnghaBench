
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_NORMAL ;
 int F_NOTRACE ;
 scalar_t__ spawn (char*,char*,int *,int *,int) ;

__attribute__((used)) static inline bool getutil(char *util)
{
 return spawn("which", util, ((void*)0), ((void*)0), F_NORMAL | F_NOTRACE) == 0;
}
