#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBH_StatusTypeDef ;
struct TYPE_7__ {int /*<<< orphan*/  pipe_out; int /*<<< orphan*/  pipe_in; } ;
struct TYPE_8__ {TYPE_1__ Control; } ;
typedef  TYPE_2__ USBH_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  USBH_OK ; 

USBH_StatusTypeDef  FUNC3   (USBH_HandleTypeDef *phost)
{
  /* Stop and cleanup the low level driver  */
  FUNC2(phost);  
  
  /* DeActivate VBUS on the port */ 
  FUNC1 (phost, FALSE);
  
  /* FRee Control Pipes */
  FUNC0  (phost, phost->Control.pipe_in);
  FUNC0  (phost, phost->Control.pipe_out);  
  
  return USBH_OK;  
}