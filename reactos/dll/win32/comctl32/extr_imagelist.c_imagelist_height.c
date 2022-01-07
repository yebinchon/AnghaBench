
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int TILE_COUNT ;

__attribute__((used)) static inline UINT imagelist_height( UINT count )
{
    return ((count + TILE_COUNT - 1)/TILE_COUNT);
}
