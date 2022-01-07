
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fe_tx_ring {int tx_ring_size; int tx_next_idx; int tx_free_idx; } ;


 int barrier () ;

__attribute__((used)) static inline u32 fe_empty_txd(struct fe_tx_ring *ring)
{
 barrier();
 return (u32)(ring->tx_ring_size -
   ((ring->tx_next_idx - ring->tx_free_idx) &
    (ring->tx_ring_size - 1)));
}
