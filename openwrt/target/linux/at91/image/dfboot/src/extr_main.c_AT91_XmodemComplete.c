
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Stop ) (TYPE_2__*) ;} ;
struct TYPE_3__ {TYPE_2__ tempo; } ;
typedef int AT91S_PipeStatus ;


 int XmodemComplete ;
 int stub1 (TYPE_2__*) ;
 TYPE_1__ svcXmodem ;

__attribute__((used)) static void AT91_XmodemComplete(AT91S_PipeStatus status, void *pVoid)
{

 svcXmodem.tempo.Stop(&(svcXmodem.tempo));
 XmodemComplete = 1;
}
