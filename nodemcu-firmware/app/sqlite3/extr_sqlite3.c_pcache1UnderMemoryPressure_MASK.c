#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ szSlot; int bUnderPressure; scalar_t__ nSlot; } ;
struct TYPE_4__ {scalar_t__ szPage; scalar_t__ szExtra; } ;
typedef  TYPE_1__ PCache1 ;

/* Variables and functions */
 TYPE_3__ pcache1 ; 
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(PCache1 *pCache){
  if( pcache1.nSlot && (pCache->szPage+pCache->szExtra)<=pcache1.szSlot ){
    return pcache1.bUnderPressure;
  }else{
    return FUNC0();
  }
}