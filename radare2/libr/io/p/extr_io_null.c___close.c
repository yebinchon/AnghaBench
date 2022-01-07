
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ RIODesc ;


 int R_FREE (int ) ;

__attribute__((used)) static int __close(RIODesc* fd) {
 R_FREE (fd->data);
 return 0;
}
