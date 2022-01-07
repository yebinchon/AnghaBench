
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alarm_id; } ;
typedef int RRDHOST ;
typedef TYPE_1__ ALARM_ENTRY ;


 int alarm_isrepeating (int *,int ) ;

int alarm_entry_isrepeating(RRDHOST *host, ALARM_ENTRY *ae) {
    return alarm_isrepeating(host, ae->alarm_id);
}
