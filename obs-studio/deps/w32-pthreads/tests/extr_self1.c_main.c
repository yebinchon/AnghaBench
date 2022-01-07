
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; } ;
typedef TYPE_1__ pthread_t ;


 int assert (int ) ;
 TYPE_1__ pthread_self () ;
 int pthread_win32_process_attach_np () ;
 int pthread_win32_process_detach_np () ;

int
main(int argc, char * argv[])
{




 pthread_t self;





 self = pthread_self();

 assert(self.p != ((void*)0));




 return 0;
}
