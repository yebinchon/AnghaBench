
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int InterfaceIndexTable ;


 int TRUE ;
 int * getInterfaceIndexTableInt (int ) ;

InterfaceIndexTable *getNonLoopbackInterfaceIndexTable(void) {
    return getInterfaceIndexTableInt( TRUE );
}
