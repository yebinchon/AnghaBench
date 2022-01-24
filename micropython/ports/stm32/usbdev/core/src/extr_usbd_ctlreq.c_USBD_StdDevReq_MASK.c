#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USBD_StatusTypeDef ;
struct TYPE_11__ {int bRequest; } ;
typedef  TYPE_1__ USBD_SetupReqTypedef ;
typedef  int /*<<< orphan*/  USBD_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  USBD_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
#define  USB_REQ_CLEAR_FEATURE 134 
#define  USB_REQ_GET_CONFIGURATION 133 
#define  USB_REQ_GET_DESCRIPTOR 132 
#define  USB_REQ_GET_STATUS 131 
#define  USB_REQ_SET_ADDRESS 130 
#define  USB_REQ_SET_CONFIGURATION 129 
#define  USB_REQ_SET_FEATURE 128 

USBD_StatusTypeDef  FUNC8 (USBD_HandleTypeDef *pdev , USBD_SetupReqTypedef  *req)
{
  USBD_StatusTypeDef ret = USBD_OK;

  switch (req->bRequest)
  {
  case USB_REQ_GET_DESCRIPTOR:

    FUNC3 (pdev, req) ;
    break;

  case USB_REQ_SET_ADDRESS:
    FUNC5(pdev, req);
    break;

  case USB_REQ_SET_CONFIGURATION:
    FUNC6 (pdev , req);
    break;

  case USB_REQ_GET_CONFIGURATION:
    FUNC2 (pdev , req);
    break;

  case USB_REQ_GET_STATUS:
    FUNC4 (pdev , req);
    break;


  case USB_REQ_SET_FEATURE:
    FUNC7 (pdev , req);
    break;

  case USB_REQ_CLEAR_FEATURE:
    FUNC0 (pdev , req);
    break;

  default:
    FUNC1(pdev , req);
    break;
  }

  return ret;
}