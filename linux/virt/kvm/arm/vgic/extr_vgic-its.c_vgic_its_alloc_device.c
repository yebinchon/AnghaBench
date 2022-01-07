
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vgic_its {int device_list; } ;
struct its_device {int dev_list; int itt_head; int num_eventid_bits; int itt_addr; int device_id; } ;
typedef int gpa_t ;


 int ENOMEM ;
 struct its_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct its_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct its_device *vgic_its_alloc_device(struct vgic_its *its,
      u32 device_id, gpa_t itt_addr,
      u8 num_eventid_bits)
{
 struct its_device *device;

 device = kzalloc(sizeof(*device), GFP_KERNEL);
 if (!device)
  return ERR_PTR(-ENOMEM);

 device->device_id = device_id;
 device->itt_addr = itt_addr;
 device->num_eventid_bits = num_eventid_bits;
 INIT_LIST_HEAD(&device->itt_head);

 list_add_tail(&device->dev_list, &its->device_list);
 return device;
}
