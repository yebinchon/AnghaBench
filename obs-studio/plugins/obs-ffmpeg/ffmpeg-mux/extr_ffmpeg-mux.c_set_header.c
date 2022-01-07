
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct header {int size; int data; } ;


 int malloc (size_t) ;
 int memcpy (int ,int *,size_t) ;

__attribute__((used)) static void set_header(struct header *header, uint8_t *data, size_t size)
{
 header->size = (int)size;
 header->data = malloc(size);
 memcpy(header->data, data, size);
}
