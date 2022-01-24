#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct panda_inf_priv {TYPE_1__* priv_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAFETY_ALLOUTPUT ; 
 int /*<<< orphan*/  SAFETY_NOOUTPUT ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct panda_inf_priv* priv, bool enable){
  return FUNC0(priv->priv_dev->udev,
			 FUNC1(priv->priv_dev->udev, 0),
			 0xDC, USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			 enable ? SAFETY_ALLOUTPUT : SAFETY_NOOUTPUT, 0, NULL, 0, USB_CTRL_SET_TIMEOUT);
}