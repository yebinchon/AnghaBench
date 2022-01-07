
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct InteractiveData {int dummy; } ;


 unsigned char* MALLOC (size_t) ;
 int UNUSEDPARM (struct InteractiveData*) ;

unsigned char *
tcp_transmit_alloc(struct InteractiveData *more, size_t length)
{


    UNUSEDPARM(more);

    return MALLOC(length);
}
