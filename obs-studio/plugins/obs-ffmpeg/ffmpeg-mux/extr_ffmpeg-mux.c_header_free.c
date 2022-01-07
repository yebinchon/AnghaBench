
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct header {int data; } ;


 int free (int ) ;

__attribute__((used)) static void header_free(struct header *header)
{
 free(header->data);
}
