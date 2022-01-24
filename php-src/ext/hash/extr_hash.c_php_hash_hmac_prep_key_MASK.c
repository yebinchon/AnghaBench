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
struct TYPE_3__ {size_t const block_size; int /*<<< orphan*/  (* hash_final ) (unsigned char*,void*) ;int /*<<< orphan*/  (* hash_update ) (void*,unsigned char const*,size_t const) ;int /*<<< orphan*/  (* hash_init ) (void*) ;} ;
typedef  TYPE_1__ php_hash_ops ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,void*) ; 

__attribute__((used)) static inline void FUNC6(unsigned char *K, const php_hash_ops *ops, void *context, const unsigned char *key, const size_t key_len) {
	FUNC1(K, 0, ops->block_size);
	if (key_len > ops->block_size) {
		/* Reduce the key first */
		ops->hash_init(context);
		ops->hash_update(context, key, key_len);
		ops->hash_final(K, context);
	} else {
		FUNC0(K, key, key_len);
	}
	/* XOR the key with 0x36 to get the ipad) */
	FUNC2(K, K, 0x36, ops->block_size);
}