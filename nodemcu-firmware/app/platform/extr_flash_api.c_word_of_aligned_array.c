
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int NODE_DBG (char*) ;

uint16_t word_of_aligned_array(const uint16_t *aligned_array, uint32_t index)
{
    if ( (((uint32_t)aligned_array) % 4) != 0 )
    {
        NODE_DBG("aligned_array is not 4-byte aligned.\n");
        return 0;
    }
    volatile uint32_t v = ((uint32_t *)aligned_array)[ index / 2 ];
    uint16_t *p = (uint16_t *) (&v);
    return (index % 2 == 0) ? p[ 0 ] : p[ 1 ];
}
