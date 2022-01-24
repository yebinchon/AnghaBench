#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
struct TYPE_9__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_8__ {int len; int /*<<< orphan*/ * buf; scalar_t__ prefix; } ;
struct TYPE_7__ {int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ RIO ;
typedef  int /*<<< orphan*/  RHash ;

/* Variables and functions */
 int R_HASH_ALL ; 
 int R_HASH_NONE ; 
 TYPE_4__* _s ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long long from ; 
 scalar_t__ incremental ; 
 scalar_t__ iterations ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int quiet ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int,int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 
 TYPE_2__ s ; 
 long long to ; 

__attribute__((used)) static int FUNC17(const char *file, const char *algo, RIO *io, int bsize, int rad, int ule, const ut8 *compare) {
	ut64 j, fsize, algobit = FUNC12 (algo);
	RHash *ctx;
	ut8 *buf;
	int ret = 0;
	ut64 i;
	bool first = true;
	if (algobit == R_HASH_NONE) {
		FUNC4 ("rahash2: Invalid hashing algorithm specified\n");
		return 1;
	}
	fsize = FUNC15 (io->desc);
	if (fsize < 1) {
		FUNC4 ("rahash2: Invalid file size\n");
		return 1;
	}
	if (bsize < 0) {
		bsize = fsize / -bsize;
	}
	if (bsize == 0 || bsize > fsize) {
		bsize = fsize;
	}
	if (to == 0LL) {
		to = fsize;
	}
	if (from > to) {
		FUNC4 ("rahash2: Invalid -f -t range\n");
		return 1;
	}
	if (fsize == -1LL) {
		FUNC4 ("rahash2: Unknown file size\n");
		return 1;
	}
	buf = FUNC0 (1, bsize + 1);
	if (!buf) {
		return 1;
	}
	ctx = FUNC13 (true, algobit);

	if (rad == 'j') {
		FUNC6 ("[");
	}
	if (incremental) {
		for (i = 1; i < R_HASH_ALL; i <<= 1) {
			if (algobit & i) {
				ut64 hashbit = i & algobit;
				int dlen = FUNC14 (hashbit);
				FUNC7 (ctx, i);
				if (s.buf && s.prefix) {
					FUNC2 (ctx, hashbit, s.buf, s.len, rad, 0, ule);
				}
				for (j = from; j < to; j += bsize) {
					int len = ((j + bsize) > to)? (to - j): bsize;
					FUNC16 (io, j, buf, len);
					FUNC2 (ctx, hashbit, buf, len, rad, 0, ule);
				}
				if (s.buf && !s.prefix) {
					FUNC2 (ctx, hashbit, s.buf, s.len, rad, 0, ule);
				}
				FUNC8 (ctx, i);
				if (iterations > 0) {
					FUNC9 (ctx, i, iterations, _s);
				}
				if (!*FUNC11 (i)) {
					continue;
				}
				if (rad == 'j') {
					if (first) {
						first = false;
					} else {
						FUNC6 (",");
					}
				}
				if (!quiet && rad != 'j') {
					FUNC6 ("%s: ", file);
				}
				FUNC3 (ctx, i, dlen, quiet? 'n': rad, ule);
				if (quiet == 1) {
					FUNC6 (" %s\n", file);
				} else {
					if (quiet && !rad) {
						FUNC6 ("\n");
					}
				}
			}
		}
		if (_s) {
			FUNC5 (_s->buf);
		}
	} else {
		/* iterate over all algorithm bits */
		if (s.buf) {
			FUNC4 ("Warning: Seed ignored on per-block hashing.\n");
		}
		for (i = 1; i < R_HASH_ALL; i <<= 1) {
			ut64 f, t, ofrom, oto;
			if (algobit & i) {
				ut64 hashbit = i & algobit;
				ofrom = from;
				oto = to;
				f = from;
				t = to;
				for (j = f; j < t; j += bsize) {
					int nsize = (j + bsize < fsize)? bsize: (fsize - j);
					FUNC16 (io, j, buf, bsize);
					from = j;
					to = j + bsize;
					if (to > fsize) {
						to = fsize;
					}
					FUNC2 (ctx, hashbit, buf, nsize, rad, 1, ule);
				}
				FUNC2 (ctx, hashbit, NULL, 0, rad, 1, ule);
				from = ofrom;
				to = oto;
			}
		}
	}
	if (rad == 'j') {
		FUNC6 ("]\n");
	}

	FUNC1 (ctx, compare, FUNC14 (algobit), &ret);
	FUNC10 (ctx);
	FUNC5 (buf);
	return ret;
}