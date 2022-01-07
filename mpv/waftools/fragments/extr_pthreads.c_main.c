
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int func ;
 scalar_t__ pthread_create (int *,int ,int ,int ) ;

int main(void) {
    pthread_t tid;
    return pthread_create (&tid, 0, func, 0) != 0;
}
