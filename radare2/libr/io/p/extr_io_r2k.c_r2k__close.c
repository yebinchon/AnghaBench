
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ RIODesc ;


 int CloseHandle (scalar_t__) ;
 int StartStopService (int ,int ) ;
 int TEXT (char*) ;
 int TRUE ;
 int close (int) ;
 int eprintf (char*) ;
 scalar_t__ gHandleDriver ;

__attribute__((used)) static int r2k__close(RIODesc *fd) {






 if (fd) {
  close ((int)(size_t)fd->data);
 }



 return 0;
}
