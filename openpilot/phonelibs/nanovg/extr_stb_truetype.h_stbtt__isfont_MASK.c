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
typedef  int /*<<< orphan*/  stbtt_uint8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const stbtt_uint8 *font)
{
   // check the version number
   if (FUNC1(font, '1',0,0,0))  return 1; // TrueType 1
   if (FUNC0(font, "typ1"))   return 1; // TrueType with type 1 font -- we don't support this!
   if (FUNC0(font, "OTTO"))   return 1; // OpenType with CFF
   if (FUNC1(font, 0,1,0,0)) return 1; // OpenType 1.0
   return 0;
}