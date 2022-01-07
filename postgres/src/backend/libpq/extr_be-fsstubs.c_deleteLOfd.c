
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** cookies ;

__attribute__((used)) static void
deleteLOfd(int fd)
{
 cookies[fd] = ((void*)0);
}
