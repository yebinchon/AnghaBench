#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char ut8 ;
typedef  int ut64 ;
typedef  scalar_t__ st64 ;
struct TYPE_2__ {int len; char* buf; scalar_t__ prefix; } ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  int /*<<< orphan*/  RIO ;
typedef  int /*<<< orphan*/  RHash ;

/* Variables and functions */
 int INSIZE ; 
 int R_HASH_ALL ; 
 int /*<<< orphan*/  R_PERM_R ; 
 scalar_t__ _s ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int*) ; 
 int FUNC3 (char*,char const*,int /*<<< orphan*/ *,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (char const*,int,char*,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*,int,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 size_t FUNC10 (void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int from ; 
 int incremental ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  iterations ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  quiet ; 
 scalar_t__ FUNC16 (char*) ; 
 int FUNC17 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (char const*) ; 
 int /*<<< orphan*/ * FUNC20 (int,int) ; 
 int FUNC21 (int) ; 
 int FUNC22 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 () ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC28 (char*) ; 
 int FUNC29 (int /*<<< orphan*/ *,void*) ; 
 void* r_optarg ; 
 int r_optind ; 
 scalar_t__ FUNC30 (int*) ; 
 char* FUNC31 (char*,int) ; 
 int FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (char*,char const*,char*) ; 
 TYPE_1__ s ; 
 int /*<<< orphan*/  FUNC34 (void*,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC35 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC36 (char*,char*) ; 
 int FUNC37 (char const*) ; 
 int /*<<< orphan*/  FUNC38 (char*,char*,int) ; 
 int to ; 

int FUNC39(int argc, char **argv) {
	ut64 i;
	int ret, c, rad = 0, bsize = 0, numblocks = 0, ule = 0;
	const char *algo = "sha256"; /* default hashing algorithm */
	const char *seed = NULL;
	const char *decrypt = NULL;
	const char *encrypt = NULL;
	char *hashstr = NULL;
	ut8 *iv = NULL;
	int ivlen = -1;
	char *ivseed = NULL;
	const char *compareStr = NULL;
	const char *ptype = NULL;
	ut8 *compareBin = NULL;
	int hashstr_len = -1;
	int hashstr_hex = 0;
	size_t bytes_read = 0;// bytes read from stdin
	ut64 algobit;
	RHash *ctx;
	RIO *io;

	while ((c = FUNC17 (argc, argv, "p:jD:rveE:a:i:I:S:s:x:b:nBhf:t:kLqc:")) != -1) {
		switch (c) {
		case 'q': quiet++; break;
		case 'i':
			iterations = FUNC1 (r_optarg);
			if (iterations < 0) {
				FUNC9 ("error: -i argument must be positive\n");
				return 1;
			}
			break;
		case 'j': rad = 'j'; break;
		case 'S': seed = r_optarg; break;
		case 'I': ivseed = r_optarg; break;
		case 'n': numblocks = 1; break;
		case 'D': decrypt = r_optarg; break;
		case 'E': encrypt = r_optarg; break;
		case 'L': FUNC0 (); return 0;
		case 'e': ule = 1; break;
		case 'r': rad = 1; break;
		case 'k': rad = 2; break;
		case 'p': ptype = r_optarg; break;
		case 'a': algo = r_optarg; break;
		case 'B': incremental = false; break;
		case 'b': bsize = (int) FUNC29 (NULL, r_optarg); break;
		case 'f': from = FUNC29 (NULL, r_optarg); break;
		case 't': to = 1 + FUNC29 (NULL, r_optarg); break;
		case 'v': return FUNC28 ("rahash2");
		case 'h': return FUNC6 (0);
		case 's': FUNC34 (r_optarg, 0); break;
		case 'x': FUNC34 (r_optarg, 1); break;
		case 'c': compareStr = r_optarg; break;
		default: return FUNC6 (0);
		}
	}
	if (encrypt && decrypt) {
		FUNC9 ("rahash2: Option -E and -D are incompatible with each other.\n");
		return 1;
	}
	if (compareStr) {
		int compareBin_len;
		if (bsize && !incremental) {
			FUNC9 ("rahash2: Option -c incompatible with -b and -B options.\n");
			return 1;
		}
		bool flag = false;
		if (encrypt) {
			flag = !FUNC35 (encrypt, "base64") || !FUNC35 (encrypt, "base91");
		} else if (decrypt) {
			flag = !FUNC35 (decrypt, "base64") || !FUNC35 (decrypt, "base91");
		}
		if (flag) {
			FUNC9 ("rahash2: Option -c incompatible with -E base64, -E base91, -D base64 or -D base91 options.\n");
			return 1;
		}
		algobit = FUNC19 (algo);
		// if algobit represents a single algorithm then it's a power of 2
		if (!FUNC12 (algobit)) {
			FUNC9 ("rahash2: Option -c incompatible with multiple algorithms in -a.\n");
			return 1;
		}
		compareBin = FUNC13 ((FUNC37 (compareStr) + 1) * 2);
		if (!compareBin) {
			return 1;
		}
		compareBin_len = FUNC22 (compareStr, compareBin);
		if (compareBin_len < 1) {
			FUNC9 ("rahash2: Invalid -c hex hash\n");
			FUNC11 (compareBin);
			return 1;
		} else if (compareBin_len != FUNC21 (algobit))   {
			FUNC9 (
				"rahash2: Given -c hash has %d byte(s) but the selected algorithm returns %d byte(s).\n",
				compareBin_len,
				FUNC21 (algobit));
			FUNC11 (compareBin);
			return 1;
		}
	}
	if ((st64) from >= 0 && (st64) to < 0) {
		to = 0; // end of file
	}
	if (from || to) {
		if (to && from >= to) {
			FUNC9 ("Invalid -f or -t offsets\n");
			return 1;
		}
	}
	if (ptype) {
		// TODO: support p=%s (horizontal bars)
		// TODO: list supported statistical metrics
		// TODO: support -f and -t
		for (i = r_optind; i < argc; i++) {
			FUNC15 ("%s:\n", argv[i]);
			FUNC33 ("r2 -qfnc \"p==%s 100\" \"%s\"", ptype, argv[i]);
		}
		return 0;
	}
	// convert iv to hex or string.
	if (ivseed) {
		iv = (ut8 *) FUNC13 (FUNC37 (ivseed) + 128);
		if (!FUNC38 (ivseed, "s:", 2)) {
			FUNC36 ((char *) iv, ivseed + 2);
			ivlen = FUNC37 (ivseed + 2);
		} else {
			ivlen = FUNC22 (ivseed, iv);
			if (ivlen < 1) {
				FUNC36 ((char *) iv, ivseed);
				ivlen = FUNC37 (ivseed);
			}
		}
	}
	FUNC5 (seed);
	if (hashstr) {
#define INSIZE 32768
		ret = 0;
		if (!FUNC35 (hashstr, "-")) {
			hashstr = FUNC13 (INSIZE);
			if (!hashstr) {
				FUNC11 (iv);
				return 1;
			}
			bytes_read = FUNC10 ((void *) hashstr, 1, INSIZE - 1, stdin);
			if (bytes_read < 1) {
				bytes_read = 0;
			}
			hashstr[bytes_read] = '\0';
			hashstr_len = bytes_read;
		}
		if (hashstr_hex) {
			ut8 *out = FUNC13 ((FUNC37 (hashstr) + 1) * 2);
			hashstr_len = FUNC22 (hashstr, out);
			if (hashstr_len < 1) {
				FUNC9 ("Invalid hex string\n");
				FUNC11 (out);
				FUNC11 (iv);
				return 1;
			}
			hashstr = (char *) out;
			/* out memleaks here, hashstr can't be freed */
		} else {
			if (!bytes_read) {
				hashstr_len = FUNC37 (hashstr);
			}
		}
		if (from) {
			if (from >= hashstr_len) {
				FUNC9 ("Invalid -f.\n");
				FUNC11 (iv);
				return 1;
			}
		}
		if (to) {
			if (to > hashstr_len) {
				FUNC9 ("Invalid -t.\n");
				return 1;
			}
		} else {
			to = hashstr_len;
		}
		hashstr = hashstr + from;
		hashstr_len = to - from;
		hashstr[hashstr_len] = '\0';
		if (!bytes_read && !hashstr_hex) {
			hashstr_len = FUNC32 (hashstr);
		}
		if (encrypt) {
			return FUNC7 (encrypt, 0, hashstr, hashstr_len, iv, ivlen, 0);
		} else if (decrypt) {
			return FUNC7 (decrypt, 1, hashstr, hashstr_len, iv, ivlen, 0);
		} else {
			char *str = (char *) hashstr;
			int strsz = hashstr_len;
			if (_s) {
				// alloc/concat/resize
				str = FUNC13 (strsz + s.len);
				if (s.prefix) {
					FUNC14 (str, s.buf, s.len);
					FUNC14 (str + s.len, hashstr, hashstr_len);
				} else {
					FUNC14 (str, hashstr, hashstr_len);
					FUNC14 (str + strsz, s.buf, s.len);
				}
				strsz += s.len;
				str[strsz] = 0;
			}
			algobit = FUNC19 (algo);
			if (algobit == 0) {
				FUNC9 ("Invalid algorithm. See -E, -D maybe?\n");
				if (str != hashstr) {
					FUNC11 (str);
				}
				FUNC11 (iv);
				return 1;
			}
			for (i = 1; i < R_HASH_ALL; i <<= 1) {
				if (algobit & i) {
					ut64 hashbit = i & algobit;
					ctx = FUNC20 (true, hashbit);
					from = 0;
					to = strsz;
					FUNC4 (ctx, hashbit, (const ut8 *) str, strsz, rad, 1, ule);
					FUNC2 (ctx, compareBin, FUNC21 (algobit), &ret);
					FUNC18 (ctx);
				}
			}
			if (_s) {
				if (str != hashstr) {
					FUNC11 (str);
				}
				FUNC11 (s.buf);
			}
			return ret;
		}
	}
	if (r_optind >= argc) {
		FUNC11 (iv);
		return FUNC6 (1);
	}
	if (numblocks) {
		bsize = -bsize;
	} else if (bsize < 0) {
		FUNC9 ("rahash2: Invalid block size\n");
		FUNC11 (iv);
		return 1;
	}

	io = FUNC25 ();
	for (ret = 0, i = r_optind; i < argc; i++) {
		if (encrypt) {// for encrytion when files are provided
			int rt = FUNC8 (encrypt, 0, argv[i], iv, ivlen, 0);
			if (rt == -1) {
				continue;
			} else {
				return rt;
			}
		} else if (decrypt) {
			int rt = FUNC8 (decrypt, 1, argv[i], iv, ivlen, 0);
			if (rt == -1) {
				continue;
			} else {
				return rt;
			}
		} else {
			RIODesc *desc = NULL;
			if (!FUNC35 (argv[i], "-")) {
				int sz = 0;
				ut8 *buf = (ut8 *) FUNC30 (&sz);
				char *uri = FUNC31 ("malloc://%d", sz);
				if (sz > 0) {
					desc = FUNC26 (io, uri, R_PERM_R, 0);
					if (!desc) {
						FUNC9 ("rahash2: Cannot open malloc://1024\n");
						FUNC11 (iv);
						return 1;
					}
					FUNC27 (io, 0, buf, sz);
				}
				FUNC11 (uri);
			} else {
				if (FUNC16 (argv[i])) {
					FUNC9 ("rahash2: Cannot hash directories\n");
					FUNC11 (iv);
					return 1;
				}
				desc = FUNC26 (io, argv[i], R_PERM_R, 0);
				if (!desc) {
					FUNC9 ("rahash2: Cannot open '%s'\n", argv[i]);
					FUNC11 (iv);
					return 1;
				}
			}
			ret |= FUNC3 (argv[i], algo, io, bsize, rad, ule, compareBin);
			to = 0;
			FUNC23 (desc);
		}
	}
	FUNC11 (hashstr);
	FUNC24 (io);
	FUNC11 (iv);

	return ret;
}