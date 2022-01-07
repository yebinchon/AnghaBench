
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ action; int signo; int name; int count; } ;


 scalar_t__ NETDATA_SIGNAL_END_OF_LIST ;
 scalar_t__ NETDATA_SIGNAL_FATAL ;
 int STDERR_FILENO ;
 TYPE_1__* signals_waiting ;
 int snprintfz (char*,int,char*,int ) ;
 int strlen (char*) ;
 scalar_t__ unlikely (int) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void signal_handler(int signo) {

    int i;
    for(i = 0; signals_waiting[i].action != NETDATA_SIGNAL_END_OF_LIST ; i++) {
        if(unlikely(signals_waiting[i].signo == signo)) {
            signals_waiting[i].count++;

            if(signals_waiting[i].action == NETDATA_SIGNAL_FATAL) {
                char buffer[200 + 1];
                snprintfz(buffer, 200, "\nSIGNAL HANLDER: received: %s. Oops! This is bad!\n", signals_waiting[i].name);
                if(write(STDERR_FILENO, buffer, strlen(buffer)) == -1) {

                    ;
                }
            }

            return;
        }
    }
}
