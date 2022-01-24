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
typedef  int /*<<< orphan*/  uint8_t ;
struct seama_entity_header {void* imagesize; int /*<<< orphan*/  metasize; void* magic; int /*<<< orphan*/  md5; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  MD5_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t SEAMA_MAGIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct seama_entity_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,size_t) ; 
 char* seama_path ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC10(FILE *seama, size_t metasize, size_t imagesize) {
	struct seama_entity_header hdr = {};
	uint8_t buf[128];
	size_t length = imagesize;
	size_t bytes;
	MD5_CTX ctx;

	FUNC7(seama, sizeof(hdr) + metasize, SEEK_SET);
	FUNC1(&ctx);
	while ((bytes = FUNC6(buf, 1, FUNC9(sizeof(buf), length), seama)) > 0) {
		FUNC2(&ctx, buf, bytes);
		length -= bytes;
	}
	FUNC0(hdr.md5, &ctx);

	hdr.magic = FUNC4(SEAMA_MAGIC);
	hdr.metasize = FUNC3(metasize);
	hdr.imagesize = FUNC4(imagesize);

	FUNC7(seama, 0, SEEK_SET);
	bytes = FUNC8(&hdr, 1, sizeof(hdr), seama);
	if (bytes != sizeof(hdr)) {
		FUNC5(stderr, "Couldn't write Seama entity header to %s\n", seama_path);
		return -EIO;
	}

	return 0;
}