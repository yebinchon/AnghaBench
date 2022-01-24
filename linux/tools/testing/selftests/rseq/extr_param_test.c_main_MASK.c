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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void** loop_cnt ; 
 void* loop_cnt_1 ; 
 void* loop_cnt_2 ; 
 void* loop_cnt_3 ; 
 void* loop_cnt_4 ; 
 void* loop_cnt_5 ; 
 void* loop_cnt_6 ; 
 void* opt_disable_mod ; 
 int opt_disable_rseq ; 
 int opt_mb ; 
 void* opt_modulo ; 
 int /*<<< orphan*/  opt_reps ; 
 int opt_signal ; 
 void* opt_sleep ; 
 int opt_test ; 
 void* opt_threads ; 
 int opt_yield ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int verbose ; 

int FUNC13(int argc, char **argv)
{
	int i;

	for (i = 1; i < argc; i++) {
		if (argv[i][0] != '-')
			continue;
		switch (argv[i][1]) {
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			if (argc < i + 2) {
				FUNC7(argc, argv);
				goto error;
			}
			loop_cnt[argv[i][1] - '0'] = FUNC1(argv[i + 1]);
			i++;
			break;
		case 'm':
			if (argc < i + 2) {
				FUNC7(argc, argv);
				goto error;
			}
			opt_modulo = FUNC1(argv[i + 1]);
			if (opt_modulo < 0) {
				FUNC7(argc, argv);
				goto error;
			}
			i++;
			break;
		case 's':
			if (argc < i + 2) {
				FUNC7(argc, argv);
				goto error;
			}
			opt_sleep = FUNC1(argv[i + 1]);
			if (opt_sleep < 0) {
				FUNC7(argc, argv);
				goto error;
			}
			i++;
			break;
		case 'y':
			opt_yield = 1;
			break;
		case 'k':
			opt_signal = 1;
			break;
		case 'd':
			opt_disable_rseq = 1;
			break;
		case 'D':
			if (argc < i + 2) {
				FUNC7(argc, argv);
				goto error;
			}
			opt_disable_mod = FUNC1(argv[i + 1]);
			if (opt_disable_mod < 0) {
				FUNC7(argc, argv);
				goto error;
			}
			i++;
			break;
		case 't':
			if (argc < i + 2) {
				FUNC7(argc, argv);
				goto error;
			}
			opt_threads = FUNC1(argv[i + 1]);
			if (opt_threads < 0) {
				FUNC7(argc, argv);
				goto error;
			}
			i++;
			break;
		case 'r':
			if (argc < i + 2) {
				FUNC7(argc, argv);
				goto error;
			}
			opt_reps = FUNC2(argv[i + 1]);
			if (opt_reps < 0) {
				FUNC7(argc, argv);
				goto error;
			}
			i++;
			break;
		case 'h':
			FUNC7(argc, argv);
			goto end;
		case 'T':
			if (argc < i + 2) {
				FUNC7(argc, argv);
				goto error;
			}
			opt_test = *argv[i + 1];
			switch (opt_test) {
			case 's':
			case 'l':
			case 'i':
			case 'b':
			case 'm':
				break;
			default:
				FUNC7(argc, argv);
				goto error;
			}
			i++;
			break;
		case 'v':
			verbose = 1;
			break;
		case 'M':
			opt_mb = 1;
			break;
		default:
			FUNC7(argc, argv);
			goto error;
		}
	}

	loop_cnt_1 = loop_cnt[1];
	loop_cnt_2 = loop_cnt[2];
	loop_cnt_3 = loop_cnt[3];
	loop_cnt_4 = loop_cnt[4];
	loop_cnt_5 = loop_cnt[5];
	loop_cnt_6 = loop_cnt[6];

	if (FUNC6())
		goto error;

	if (!opt_disable_rseq && FUNC4())
		goto error;
	switch (opt_test) {
	case 's':
		FUNC3("spinlock\n");
		FUNC12();
		break;
	case 'l':
		FUNC3("linked list\n");
		FUNC10();
		break;
	case 'b':
		FUNC3("buffer\n");
		FUNC8();
		break;
	case 'm':
		FUNC3("memcpy buffer\n");
		FUNC11();
		break;
	case 'i':
		FUNC3("counter increment\n");
		FUNC9();
		break;
	}
	if (!opt_disable_rseq && FUNC5())
		FUNC0();
end:
	return 0;

error:
	return -1;
}