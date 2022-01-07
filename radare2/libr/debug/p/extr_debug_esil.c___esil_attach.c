
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* io; } ;
struct TYPE_14__ {TYPE_3__ iob; } ;
struct TYPE_13__ {TYPE_4__* bfvm; } ;
struct TYPE_12__ {int input; int screen; int base; } ;
struct TYPE_10__ {TYPE_1__* desc; } ;
struct TYPE_9__ {TYPE_5__* data; } ;
typedef TYPE_5__ RIOBdescbg ;
typedef TYPE_6__ RDebug ;


 int eprintf (char*,...) ;
 int is_io_esil (TYPE_6__*) ;

__attribute__((used)) static int __esil_attach(RDebug *dbg, int pid) {
 eprintf ("OK attach\n");
 return 1;
 return 1;
}
