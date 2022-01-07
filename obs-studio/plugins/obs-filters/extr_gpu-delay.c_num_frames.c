
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int dummy; } ;
struct circlebuf {int size; } ;



__attribute__((used)) static size_t num_frames(struct circlebuf *buf)
{
 return buf->size / sizeof(struct frame);
}
