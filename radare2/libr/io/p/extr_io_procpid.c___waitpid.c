
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static int __waitpid(int pid) {
 int st = 0;
 return (waitpid(pid, &st, 0) != -1);
}
