#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  TYPE_1__* sdlTypePtr ;
struct TYPE_13__ {int /*<<< orphan*/ * attributeGroups; } ;
typedef  TYPE_2__ sdlCtx ;
typedef  TYPE_3__* sdlAttributePtr ;
typedef  int /*<<< orphan*/  sdlAttribute ;
struct TYPE_14__ {int /*<<< orphan*/ * ref; int /*<<< orphan*/ * extraAttributes; void* name; void* namens; void* fixed; void* def; } ;
struct TYPE_12__ {scalar_t__ attributes; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ HASH_KEY_IS_STRING ; 
 int /*<<< orphan*/  copy_extra_attribute ; 
 int /*<<< orphan*/  delete_extra_attribute ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(sdlCtx *ctx, sdlAttributePtr attr, HashTable *ht)
{
	sdlTypePtr tmp;
	sdlAttributePtr tmp_attr;

	if (attr->ref != NULL) {
		if (ctx->attributeGroups != NULL) {
			tmp = (sdlTypePtr)FUNC5(ctx->attributeGroups, attr->ref);
			if (tmp) {
				if (tmp->attributes) {
					FUNC13(tmp->attributes);
					while ((tmp_attr = FUNC8(tmp->attributes)) != NULL) {
						if (FUNC10(tmp->attributes) == HASH_KEY_IS_STRING) {
							zend_string* _key;
							sdlAttributePtr newAttr;

							FUNC4(ctx, tmp_attr);

							newAttr = FUNC1(sizeof(sdlAttribute));
							FUNC3(newAttr, tmp_attr, sizeof(sdlAttribute));
							if (newAttr->def) {newAttr->def = FUNC2(newAttr->def);}
							if (newAttr->fixed) {newAttr->fixed = FUNC2(newAttr->fixed);}
							if (newAttr->namens) {newAttr->namens = FUNC2(newAttr->namens);}
							if (newAttr->name) {newAttr->name = FUNC2(newAttr->name);}
							if (newAttr->extraAttributes) {
								HashTable *ht = FUNC1(sizeof(HashTable));
								FUNC12(ht, FUNC15(newAttr->extraAttributes), NULL, delete_extra_attribute, 0);
								FUNC7(ht, newAttr->extraAttributes, copy_extra_attribute);
								newAttr->extraAttributes = ht;
							}

							FUNC9(tmp->attributes, &_key, NULL);
							FUNC6(ht, _key, newAttr);

							FUNC14(tmp->attributes);
						} else {
							zend_ulong index;

							FUNC16(ctx, tmp_attr, ht);
							FUNC9(tmp->attributes, NULL, &index);
							FUNC11(tmp->attributes, index);
						}
					}
				}
			}
		}
		FUNC0(attr->ref);
		attr->ref = NULL;
	}
}