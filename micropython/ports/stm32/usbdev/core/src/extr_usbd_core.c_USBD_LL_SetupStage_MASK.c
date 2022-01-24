#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  USBD_StatusTypeDef ;
struct TYPE_12__ {int bmRequest; int /*<<< orphan*/  wLength; } ;
struct TYPE_11__ {TYPE_3__ request; int /*<<< orphan*/  ep0_data_len; int /*<<< orphan*/  ep0_state; } ;
typedef  TYPE_1__ USBD_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  USBD_EP0_SETUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  USBD_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*) ; 
#define  USB_REQ_RECIPIENT_DEVICE 130 
#define  USB_REQ_RECIPIENT_ENDPOINT 129 
#define  USB_REQ_RECIPIENT_INTERFACE 128 

USBD_StatusTypeDef FUNC5(USBD_HandleTypeDef *pdev, uint8_t *psetup)
{

  FUNC1(&pdev->request, psetup);

  pdev->ep0_state = USBD_EP0_SETUP;
  pdev->ep0_data_len = pdev->request.wLength;

  switch (pdev->request.bmRequest & 0x1F)
  {
  case USB_REQ_RECIPIENT_DEVICE:
    FUNC2 (pdev, &pdev->request);
    break;

  case USB_REQ_RECIPIENT_INTERFACE:
    FUNC4(pdev, &pdev->request);
    break;

  case USB_REQ_RECIPIENT_ENDPOINT:
    FUNC3(pdev, &pdev->request);
    break;

  default:
    FUNC0(pdev , pdev->request.bmRequest & 0x80);
    break;
  }
  return USBD_OK;
}