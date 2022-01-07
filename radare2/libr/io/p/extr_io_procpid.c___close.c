
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ RIODesc ;


 int PTRACE_DETACH ;
 int RIOPROCPID_PID (TYPE_1__*) ;
 int R_FREE (int ) ;
 int ptrace (int ,int ,int ,int ) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 int ret = ptrace (PTRACE_DETACH, RIOPROCPID_PID (fd), 0, 0);
 R_FREE (fd->data);
 return ret;
}
