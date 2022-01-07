
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int directory; } ;
typedef TYPE_1__ STARTUP_DATA ;


 int free (int ) ;

__attribute__((used)) static VOID
FreeStartupData(STARTUP_DATA *sud)
{
    free(sud->directory);
}
