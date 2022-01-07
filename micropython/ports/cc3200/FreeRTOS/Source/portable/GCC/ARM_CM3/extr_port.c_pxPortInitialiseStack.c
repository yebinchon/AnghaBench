
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TaskFunction_t ;
typedef int StackType_t ;


 int portINITIAL_XPSR ;
 int portSTART_ADDRESS_MASK ;
 scalar_t__ portTASK_RETURN_ADDRESS ;

StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters )
{


 pxTopOfStack--;
 *pxTopOfStack = portINITIAL_XPSR;
 pxTopOfStack--;
 *pxTopOfStack = ( ( StackType_t ) pxCode ) & portSTART_ADDRESS_MASK;
 pxTopOfStack--;
 *pxTopOfStack = ( StackType_t ) portTASK_RETURN_ADDRESS;
 pxTopOfStack -= 5;
 *pxTopOfStack = ( StackType_t ) pvParameters;
 pxTopOfStack -= 8;

 return pxTopOfStack;
}
