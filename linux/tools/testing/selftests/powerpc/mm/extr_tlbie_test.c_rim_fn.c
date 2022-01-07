
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ chunk_start ;


 int RIM_CHUNK_SIZE ;
 char* compute_chunk_start_addr (unsigned int) ;
 unsigned int compute_store_pattern (unsigned int,unsigned int*,unsigned int) ;
 int corruption_found ;
 int dcbf (unsigned int volatile*) ;
 int set_segv_handler () ;
 scalar_t__ timeout ;
 int verify_chunk (unsigned int,unsigned int*,unsigned int,unsigned int) ;

__attribute__((used)) static void *rim_fn(void *arg)
{
 unsigned int tid = *((unsigned int *)arg);

 int size = RIM_CHUNK_SIZE;
 char *chunk_start = compute_chunk_start_addr(tid);

 unsigned int prev_sweep_id;
 unsigned int cur_sweep_id = 0;


 unsigned int pattern = cur_sweep_id;
 unsigned int *pattern_ptr = &pattern;
 unsigned int *w_ptr, read_data;

 set_segv_handler();
 for (w_ptr = (unsigned int *)chunk_start;
      (unsigned long)w_ptr < (unsigned long)(chunk_start) + size;
      w_ptr++) {

  *pattern_ptr = compute_store_pattern(tid, w_ptr, cur_sweep_id);
  *w_ptr = *pattern_ptr;
 }

 while (!corruption_found && !timeout) {
  prev_sweep_id = cur_sweep_id;
  cur_sweep_id = cur_sweep_id + 1;

  for (w_ptr = (unsigned int *)chunk_start;
       (unsigned long)w_ptr < (unsigned long)(chunk_start) + size;
       w_ptr++) {
   unsigned int old_pattern;






   old_pattern = compute_store_pattern(tid, w_ptr, prev_sweep_id);





   dcbf((volatile unsigned int*)w_ptr);


   read_data = *w_ptr;





   if (read_data != old_pattern) {

    corruption_found = 1;
   }





   if (corruption_found || timeout) {
    verify_chunk(tid, w_ptr, cur_sweep_id, prev_sweep_id);

    return 0;
   }





   *pattern_ptr = compute_store_pattern(tid, w_ptr, cur_sweep_id);





   *w_ptr = *pattern_ptr;
  }
 }

 return ((void*)0);
}
