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
struct BlobReader {int /*<<< orphan*/  member_1; int /*<<< orphan*/  const* member_0; } ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  CRYPT_DATA_BLOB ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct BlobReader*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_blob_wrapper ; 

BOOL FUNC1(const CRYPT_DATA_BLOB *blob,
 HCERTSTORE store)
{
    struct BlobReader reader = { blob, 0 };

    return FUNC0(&reader, read_blob_wrapper, store);
}