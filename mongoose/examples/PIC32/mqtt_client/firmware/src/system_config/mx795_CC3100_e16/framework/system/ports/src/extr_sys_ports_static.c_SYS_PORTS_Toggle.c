
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PORTS_MODULE_ID ;
typedef int PORTS_DATA_MASK ;
typedef int PORTS_CHANNEL ;


 int PLIB_PORTS_Toggle (int ,int ,int ) ;

void SYS_PORTS_Toggle( PORTS_MODULE_ID index, PORTS_CHANNEL channel,
                       PORTS_DATA_MASK toggleMask )
{
    PLIB_PORTS_Toggle( index, channel, toggleMask );
}
