
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PORTS_MODULE_ID ;
typedef int PORTS_CHANNEL ;
typedef int PORTS_BIT_POS ;


 int PLIB_PORTS_PinClear (int ,int ,int ) ;

void SYS_PORTS_PinClear ( PORTS_MODULE_ID index,
                          PORTS_CHANNEL channel,
                          PORTS_BIT_POS bitPos )
{
    PLIB_PORTS_PinClear ( index, channel, bitPos );
}
