
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_SET_NAME ;
 int prctl (int ,unsigned long,int ,int ,int ) ;

void set_thread_name(const char* name) {


  prctl(PR_SET_NAME, (unsigned long)name, 0, 0, 0);

}
