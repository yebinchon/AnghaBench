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
typedef  int /*<<< orphan*/  uintf ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  udev ;
struct usbip_usb_interface {unsigned int ndev; char* busid; char* path; int bNumInterfaces; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; int /*<<< orphan*/  bInterfaceClass; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usbip_usb_device {unsigned int ndev; char* busid; char* path; int bNumInterfaces; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; int /*<<< orphan*/  bInterfaceClass; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct op_devlist_reply {unsigned int ndev; char* busid; char* path; int bNumInterfaces; int /*<<< orphan*/  bInterfaceProtocol; int /*<<< orphan*/  bInterfaceSubClass; int /*<<< orphan*/  bInterfaceClass; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
typedef  int /*<<< orphan*/  reply ;
typedef  int /*<<< orphan*/  product_name ;
typedef  int /*<<< orphan*/  class_name ;

/* Variables and functions */
 int /*<<< orphan*/  OP_REP_DEVLIST ; 
 int /*<<< orphan*/  OP_REQ_DEVLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct usbip_usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbip_usb_interface*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct usbip_usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct usbip_usb_interface*) ; 
 int FUNC10 (int,struct usbip_usb_interface*,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int*) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(char *host, int sockfd)
{
	char product_name[100];
	char class_name[100];
	struct op_devlist_reply reply;
	uint16_t code = OP_REP_DEVLIST;
	struct usbip_usb_device udev;
	struct usbip_usb_interface uintf;
	unsigned int i;
	int rc, j;
	int status;

	rc = FUNC12(sockfd, OP_REQ_DEVLIST, 0);
	if (rc < 0) {
		FUNC1("usbip_net_send_op_common failed");
		return -1;
	}

	rc = FUNC11(sockfd, &code, &status);
	if (rc < 0) {
		FUNC2("Exported Device List Request failed - %s\n",
		    FUNC13(status));
		return -1;
	}

	FUNC4(&reply, 0, sizeof(reply));
	rc = FUNC10(sockfd, &reply, sizeof(reply));
	if (rc < 0) {
		FUNC1("usbip_net_recv_op_devlist failed");
		return -1;
	}
	FUNC0(0, &reply);
	FUNC1("exportable devices: %d\n", reply.ndev);

	if (reply.ndev == 0) {
		FUNC3("no exportable devices found on %s", host);
		return 0;
	}

	FUNC5("Exportable USB devices\n");
	FUNC5("======================\n");
	FUNC5(" - %s\n", host);

	for (i = 0; i < reply.ndev; i++) {
		FUNC4(&udev, 0, sizeof(udev));
		rc = FUNC10(sockfd, &udev, sizeof(udev));
		if (rc < 0) {
			FUNC1("usbip_net_recv failed: usbip_usb_device[%d]", i);
			return -1;
		}
		FUNC8(0, &udev);

		FUNC7(product_name, sizeof(product_name),
					udev.idVendor, udev.idProduct);
		FUNC6(class_name, sizeof(class_name),
				      udev.bDeviceClass, udev.bDeviceSubClass,
				      udev.bDeviceProtocol);
		FUNC5("%11s: %s\n", udev.busid, product_name);
		FUNC5("%11s: %s\n", "", udev.path);
		FUNC5("%11s: %s\n", "", class_name);

		for (j = 0; j < udev.bNumInterfaces; j++) {
			rc = FUNC10(sockfd, &uintf, sizeof(uintf));
			if (rc < 0) {
				FUNC2("usbip_net_recv failed: usbip_usb_intf[%d]",
						j);

				return -1;
			}
			FUNC9(0, &uintf);

			FUNC6(class_name, sizeof(class_name),
					uintf.bInterfaceClass,
					uintf.bInterfaceSubClass,
					uintf.bInterfaceProtocol);
			FUNC5("%11s: %2d - %s\n", "", j, class_name);
		}

		FUNC5("\n");
	}

	return 0;
}