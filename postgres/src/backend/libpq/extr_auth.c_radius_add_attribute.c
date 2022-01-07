
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {scalar_t__ length; } ;
typedef TYPE_1__ radius_packet ;
struct TYPE_5__ {int length; int data; int attribute; } ;
typedef TYPE_2__ radius_attribute ;


 scalar_t__ RADIUS_BUFFER_SIZE ;
 int WARNING ;
 int elog (int ,char*,int ,int) ;
 int memcpy (int ,unsigned char const*,int) ;

__attribute__((used)) static void
radius_add_attribute(radius_packet *packet, uint8 type, const unsigned char *data, int len)
{
 radius_attribute *attr;

 if (packet->length + len > RADIUS_BUFFER_SIZE)
 {






  elog(WARNING,
    "adding attribute code %d with length %d to radius packet would create oversize packet, ignoring",
    type, len);
  return;
 }

 attr = (radius_attribute *) ((unsigned char *) packet + packet->length);
 attr->attribute = type;
 attr->length = len + 2;
 memcpy(attr->data, data, len);
 packet->length += attr->length;
}
