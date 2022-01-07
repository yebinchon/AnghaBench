
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libqnxr_t ;


 int qnxr_send_vcont (int *,int ,int) ;

int qnxr_continue (libqnxr_t *g, int thread_id) {
 return qnxr_send_vcont (g, 0, thread_id);
}
