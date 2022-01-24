#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  USBD_StatusTypeDef ;
struct TYPE_19__ {int bRequest; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; } ;
typedef  TYPE_2__ USBD_SetupReqTypedef ;
struct TYPE_20__ {TYPE_4__* ep_out; TYPE_4__* ep_in; int /*<<< orphan*/  dev_state; TYPE_1__* pClass; } ;
typedef  TYPE_3__ USBD_HandleTypeDef ;
struct TYPE_21__ {int status; } ;
typedef  TYPE_4__ USBD_EndpointTypeDef ;
struct TYPE_18__ {int /*<<< orphan*/  (* Setup ) (TYPE_3__*,TYPE_2__*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  USBD_OK ; 
#define  USBD_STATE_ADDRESSED 132 
#define  USBD_STATE_CONFIGURED 131 
 int /*<<< orphan*/  USB_FEATURE_EP_HALT ; 
#define  USB_REQ_CLEAR_FEATURE 130 
#define  USB_REQ_GET_STATUS 129 
#define  USB_REQ_SET_FEATURE 128 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 

USBD_StatusTypeDef  FUNC9 (USBD_HandleTypeDef *pdev , USBD_SetupReqTypedef  *req)
{

  uint8_t   ep_addr;
  USBD_StatusTypeDef ret = USBD_OK;
  USBD_EndpointTypeDef   *pep;
  ep_addr  = FUNC0(req->wIndex);

  switch (req->bRequest)
  {

  case USB_REQ_SET_FEATURE :

    switch (pdev->dev_state)
    {
    case USBD_STATE_ADDRESSED:
      if ((ep_addr != 0x00) && (ep_addr != 0x80))
      {
        FUNC6(pdev , ep_addr);
      }
      break;

    case USBD_STATE_CONFIGURED:
      if (req->wValue == USB_FEATURE_EP_HALT)
      {
        if ((ep_addr != 0x00) && (ep_addr != 0x80))
        {
          FUNC6(pdev , ep_addr);

        }
      }
      pdev->pClass->Setup (pdev, req);
      FUNC3(pdev);

      break;

    default:
      FUNC1(pdev , req);
      break;
    }
    break;

  case USB_REQ_CLEAR_FEATURE :

    switch (pdev->dev_state)
    {
    case USBD_STATE_ADDRESSED:
      if ((ep_addr != 0x00) && (ep_addr != 0x80))
      {
        FUNC6(pdev , ep_addr);
      }
      break;

    case USBD_STATE_CONFIGURED:
      if (req->wValue == USB_FEATURE_EP_HALT)
      {
        if ((ep_addr & 0x7F) != 0x00)
        {
          FUNC4(pdev , ep_addr);
          pdev->pClass->Setup (pdev, req);
        }
        FUNC3(pdev);
      }
      break;

    default:
      FUNC1(pdev , req);
      break;
    }
    break;

  case USB_REQ_GET_STATUS:
    switch (pdev->dev_state)
    {
    case USBD_STATE_ADDRESSED:
      if ((ep_addr & 0x7F) != 0x00)
      {
        FUNC6(pdev , ep_addr);
      }
      break;

    case USBD_STATE_CONFIGURED:
      pep = ((ep_addr & 0x80) == 0x80) ? &pdev->ep_in[ep_addr & 0x7F]:\
                                         &pdev->ep_out[ep_addr & 0x7F];
      if(FUNC5(pdev, ep_addr))
      {
        pep->status = 0x0001;
      }
      else
      {
        pep->status = 0x0000;
      }

      FUNC2 (pdev,
                        (uint8_t *)&pep->status,
                        2);
      break;

    default:
      FUNC1(pdev , req);
      break;
    }
    break;

  default:
    break;
  }
  return ret;
}