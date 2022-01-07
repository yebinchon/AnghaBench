
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;


 int wakeup_client (int *) ;

__attribute__((used)) static void msg_wakeup(void *p)
{
    mpv_handle *ctx = p;
    wakeup_client(ctx);
}
