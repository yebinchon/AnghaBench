#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sdlTypePtr ;
typedef  TYPE_1__* sdlParamPtr ;
typedef  int /*<<< orphan*/  sdlParam ;
typedef  int /*<<< orphan*/  encodePtr ;
struct TYPE_3__ {int order; int /*<<< orphan*/  element; int /*<<< orphan*/  encode; int /*<<< orphan*/  paramName; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  delete_parameter ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HashTable* FUNC5(encodePtr *encoders, sdlTypePtr *types, char **in)
{
	int i, n;
	HashTable *ht;

	FUNC0(i, in);
	if (i == 0) {return NULL;}
	ht = FUNC1(sizeof(HashTable));
	FUNC4(ht, i, NULL, delete_parameter, 0);
	while (i > 0) {
		sdlParamPtr param = FUNC1(sizeof(sdlParam));
		FUNC2(ht, param, in);
		param->paramName = FUNC3(in);
		FUNC0(param->order, in);
		FUNC0(n, in);
		param->encode = encoders[n];
		FUNC0(n, in);
		param->element = types[n];
		--i;
	}
	return ht;
}