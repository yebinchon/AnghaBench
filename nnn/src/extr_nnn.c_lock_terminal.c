
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CMATRIX ;
 int F_NORMAL ;
 size_t LOCKER ;
 int getutil (char*) ;
 int spawn (char*,int *,int *,int *,int ) ;
 char** utils ;

__attribute__((used)) static void lock_terminal(void)
{
 char *tmp = utils[LOCKER];

 if (!getutil(tmp))
  tmp = utils[CMATRIX];

 spawn(tmp, ((void*)0), ((void*)0), ((void*)0), F_NORMAL);
}
