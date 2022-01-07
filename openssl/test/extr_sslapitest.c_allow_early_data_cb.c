
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int allow_ed_cb_called ;

__attribute__((used)) static int allow_early_data_cb(SSL *s, void *arg)
{
    int *usecb = (int *)arg;

    allow_ed_cb_called++;

    if (*usecb == 1)
        return 0;

    return 1;
}
