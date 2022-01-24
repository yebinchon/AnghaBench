#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gl_texture_image {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 

struct gl_texture_image *FUNC1( void )
{
   return (struct gl_texture_image *) FUNC0( 1, sizeof(struct gl_texture_image) );
}