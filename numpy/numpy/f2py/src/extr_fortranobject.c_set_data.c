
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ npy_intp ;
struct TYPE_2__ {char* data; } ;


 TYPE_1__* save_def ;

__attribute__((used)) static void set_data(char *d,npy_intp *f) {
    if (*f)
        save_def->data = d;
    else
        save_def->data = ((void*)0);

}
