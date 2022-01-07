
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int st64 ;
typedef int st32 ;
struct TYPE_3__ {int tid; int pid; } ;
typedef TYPE_1__ ptid_t ;



ptid_t ptid_build (st32 pid, st64 tid) {
 ptid_t ptid;
 ptid.pid = pid;
 ptid.tid = tid;

 return ptid;
}
