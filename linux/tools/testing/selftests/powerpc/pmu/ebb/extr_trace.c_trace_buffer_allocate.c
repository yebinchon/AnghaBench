
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_buffer {int size; int overflow; int data; int tail; } ;


 int MAP_ANONYMOUS ;
 struct trace_buffer* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int fprintf (int ,char*) ;
 struct trace_buffer* mmap (int *,int,int,int,int,int ) ;
 int perror (char*) ;
 int stderr ;

struct trace_buffer *trace_buffer_allocate(u64 size)
{
 struct trace_buffer *tb;

 if (size < sizeof(*tb)) {
  fprintf(stderr, "Error: trace buffer too small\n");
  return ((void*)0);
 }

 tb = mmap(((void*)0), size, PROT_READ | PROT_WRITE,
    MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
 if (tb == MAP_FAILED) {
  perror("mmap");
  return ((void*)0);
 }

 tb->size = size;
 tb->tail = tb->data;
 tb->overflow = 0;

 return tb;
}
