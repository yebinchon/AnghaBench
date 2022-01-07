
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int eventflags_t ;
struct TYPE_3__ {int iqueue; } ;
typedef TYPE_1__ SerialDriver ;


 int SD_BREAK_DETECTED ;
 int SD_FRAMING_ERROR ;
 int SD_NOISE_ERROR ;
 int SD_OVERRUN_ERROR ;
 int SD_PARITY_ERROR ;
 int print (char*) ;
 int qSpaceI (int *) ;
 int xprintf (char*,int ) ;

__attribute__((used)) static void print_error(char* str, eventflags_t flags, SerialDriver* driver) {
    (void)str;
    (void)flags;
    (void)driver;

}
