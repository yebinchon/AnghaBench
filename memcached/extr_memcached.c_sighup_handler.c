
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sig_hup; } ;


 TYPE_1__ settings ;

__attribute__((used)) static void sighup_handler(const int sig) {
    settings.sig_hup = 1;
}
