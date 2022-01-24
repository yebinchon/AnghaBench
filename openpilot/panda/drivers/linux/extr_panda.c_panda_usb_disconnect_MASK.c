#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_interface {int dummy; } ;
struct panda_inf_priv {int /*<<< orphan*/  netdev; } ;
struct panda_dev_priv {struct panda_inf_priv** interfaces; } ;

/* Variables and functions */
 int PANDA_NUM_CAN_INTERFACES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct panda_dev_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct panda_inf_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct panda_dev_priv* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
  struct panda_dev_priv *priv_dev = FUNC5(intf);
  struct panda_inf_priv *priv_inf;
  int inf_num;

  FUNC6(intf, NULL);

  for(inf_num = 0; inf_num < PANDA_NUM_CAN_INTERFACES; inf_num++){
    priv_inf = priv_dev->interfaces[inf_num];
    if(priv_inf){
      FUNC2(priv_inf->netdev, "device disconnected\n");
      FUNC4(priv_inf->netdev);
      FUNC0(priv_inf->netdev);
    }else
      break;
  }

  FUNC3(priv_inf);
  FUNC1(priv_dev);
}