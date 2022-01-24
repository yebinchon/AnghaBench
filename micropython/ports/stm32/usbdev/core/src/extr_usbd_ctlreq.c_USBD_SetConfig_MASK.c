#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_10__ {scalar_t__ wValue; } ;
typedef  TYPE_1__ USBD_SetupReqTypedef ;
struct TYPE_11__ {int dev_state; scalar_t__ dev_config; } ;
typedef  TYPE_2__ USBD_HandleTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  USBD_FAIL ; 
 scalar_t__ USBD_MAX_NUM_CONFIGURATION ; 
#define  USBD_STATE_ADDRESSED 129 
#define  USBD_STATE_CONFIGURED 128 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(USBD_HandleTypeDef *pdev ,
                           USBD_SetupReqTypedef *req)
{

  uint8_t cfgidx;

  cfgidx = (uint8_t)(req->wValue);

  if (cfgidx > USBD_MAX_NUM_CONFIGURATION )
  {
     FUNC1(pdev , req);
  }
  else
  {
    switch (pdev->dev_state)
    {
    case USBD_STATE_ADDRESSED:
      if (cfgidx)
      {
        pdev->dev_config = cfgidx;
        pdev->dev_state = USBD_STATE_CONFIGURED;
        if(FUNC3(pdev , cfgidx) == USBD_FAIL)
        {
          FUNC1(pdev , req);
          return;
        }
        FUNC2(pdev);
      }
      else
      {
         FUNC2(pdev);
      }
      break;

    case USBD_STATE_CONFIGURED:
      if (cfgidx == 0)
      {
        pdev->dev_state = USBD_STATE_ADDRESSED;
        pdev->dev_config = cfgidx;
        FUNC0(pdev , cfgidx);
        FUNC2(pdev);

      }
      else  if (cfgidx != pdev->dev_config)
      {
        /* Clear old configuration */
        FUNC0(pdev , pdev->dev_config);

        /* set new configuration */
        pdev->dev_config = cfgidx;
        if(FUNC3(pdev , cfgidx) == USBD_FAIL)
        {
          FUNC1(pdev , req);
          return;
        }
        FUNC2(pdev);
      }
      else
      {
        FUNC2(pdev);
      }
      break;

    default:
       FUNC1(pdev , req);
      break;
    }
  }
}