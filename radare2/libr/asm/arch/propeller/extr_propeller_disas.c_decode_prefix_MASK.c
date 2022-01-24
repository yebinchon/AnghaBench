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
typedef  size_t ut8 ;
typedef  int ut32 ;
struct propeller_cmd {char* prefix; } ;

/* Variables and functions */
 char** conditions ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 

__attribute__((used)) static void FUNC1 (struct propeller_cmd *cmd, ut32 instr) {
	ut8 prefix = (instr >> 18) & 0xF;

	FUNC0 (cmd->prefix, 15, "%s", conditions[prefix]);
	cmd->prefix[15] = '\0';
}