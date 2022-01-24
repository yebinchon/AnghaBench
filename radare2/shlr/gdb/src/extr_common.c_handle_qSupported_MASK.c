#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int QThreadSuffixSupported; int QListThreadsInStopReply; int qEcho; } ;
struct TYPE_7__ {int qXfer_btrace_read; int qXfer_btrace_conf_read; int qXfer_spu_read; int qXfer_spu_write; int qXfer_libraries_read; int qXfer_libraries_svr4_read; int qXfer_memory_map_read; int qXfer_auxv_read; int qXfer_exec_file_read; int qXfer_features_read; int qXfer_sdata_read; int qXfer_siginfo_read; int qXfer_siginfo_write; int qXfer_threads_read; int qXfer_traceframe_info_read; int qXfer_uib_read; int qXfer_fdpic_read; int qXfer_osdata_read; int Qbtrace_off; int Qbtrace_bts; int Qbtrace_pt; int Qbtrace_conf_bts_size; int Qbtrace_conf_pt_size; int QNonStop; int QCatchSyscalls; int QPassSignals; int QStartNoAckMode; int QAgent; int QAllow; int QDisableRandomization; int QTBuffer_size; int QThreadEvents; int multiprocess; TYPE_1__ lldb; int /*<<< orphan*/  pkt_sz; } ;
struct TYPE_8__ {TYPE_2__ stub_features; void* remote_type; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ libgdbr_t ;

/* Variables and functions */
 void* GDB_REMOTE_TYPE_LLDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC7(libgdbr_t *g) {
	char *tok = NULL;
	// Catch no data received
	if (!*g->data) {
		return -1;
	}
	// TODO handle the message correct and set all infos like packetsize, thread stuff and features
	tok = FUNC5 (g->data, ";");
	while (tok) {
		if (FUNC2 (tok, "PacketSize=")) {
			// Largest packet size we support is 2048
			g->stub_features.pkt_sz = FUNC1 (FUNC6 (tok + FUNC4 ("PacketSize="), NULL, 16), 2048);
			// Shouldn't be smaller than 64 (Erroneous 0 etc.)
			g->stub_features.pkt_sz = FUNC0 (g->stub_features.pkt_sz, 64);
		} else if (FUNC2 (tok, "qXfer:")) {
			if (!tok[6]) {
				tok = FUNC5 (NULL, ";");
				continue;
			}
			char *p = tok + 6;
			if (FUNC2 (p, "btrace:read")) {
				g->stub_features.qXfer_btrace_read = (p[FUNC4 ("btrace:read")] == '+');
			} else if (FUNC2 (p, "btrace-conf:read")) {
				g->stub_features.qXfer_btrace_conf_read = (p[FUNC4 ("btrace-conf:read")] == '+');
			} else if (FUNC2 (p, "spu:read")) {
				g->stub_features.qXfer_spu_read = (p[FUNC4 ("spu:read")] == '+');
			} else if (FUNC2 (p, "spu:write")) {
				g->stub_features.qXfer_spu_write = (p[FUNC4 ("spu:write")] == '+');
			} else if (FUNC2 (p, "libraries:read")) {
				g->stub_features.qXfer_libraries_read = (p[FUNC4 ("libraries:read")] == '+');
			} else if (FUNC2 (p, "libraries-svr4:read")) {
				g->stub_features.qXfer_libraries_svr4_read = (p[FUNC4 ("libraries-svr4:read")] == '+');
			} else if (FUNC2 (p, "memory-map:read")) {
				g->stub_features.qXfer_memory_map_read = (p[FUNC4 ("memory-map:read")] == '+');
			} else if (FUNC2 (p, "auxv:read")) {
				g->stub_features.qXfer_auxv_read = (p[FUNC4 ("auxv:read")] == '+');
			} else if (FUNC2 (p, "exec-file:read")) {
				g->stub_features.qXfer_exec_file_read = (p[FUNC4 ("exec-file:read")] == '+');
			} else if (FUNC2 (p, "features:read")) {
				g->stub_features.qXfer_features_read = (p[FUNC4 ("features:read")] == '+');
			} else if (FUNC2 (p, "sdata:read")) {
				g->stub_features.qXfer_sdata_read = (p[FUNC4 ("sdata:read")] == '+');
			} else if (FUNC2 (p, "siginfo:read")) {
				g->stub_features.qXfer_siginfo_read = (p[FUNC4 ("siginfo:read")] == '+');
			} else if (FUNC2 (p, "siginfo:write")) {
				g->stub_features.qXfer_siginfo_write = (p[FUNC4 ("siginfo:write")] == '+');
			} else if (FUNC2 (p, "threads:read")) {
				g->stub_features.qXfer_threads_read = (p[FUNC4 ("threads:read")] == '+');
			} else if (FUNC2 (p, "traceframe-info:read")) {
				g->stub_features.qXfer_traceframe_info_read = (p[FUNC4 ("traceframe-info:read")] == '+');
			} else if (FUNC2 (p, "uib:read")) {
				g->stub_features.qXfer_uib_read = (p[FUNC4 ("uib:read")] == '+');
			} else if (FUNC2 (p, "fdpic:read")) {
				g->stub_features.qXfer_fdpic_read = (p[FUNC4 ("fdpic:read")] == '+');
			} else if (FUNC2 (p, "osdata:read")) {
				g->stub_features.qXfer_osdata_read = (p[FUNC4 ("osdata:read")] == '+');
			}
		} else if (tok[0] == 'Q') {
			if (FUNC2 (tok, "Qbtrace")) {
				if (!tok[FUNC4 ("Qbtrace")]) {
					tok = FUNC5 (NULL, ";");
					continue;
				}
				char *p = tok + 7;
				if (FUNC2 (p, ":off")) {
					g->stub_features.Qbtrace_off = (p[4] == '+');
				} else if (FUNC2 (p, ":bts")) {
					g->stub_features.Qbtrace_bts = (p[4] == '+');
				} else if (FUNC2 (p, ":pt")) {
					g->stub_features.Qbtrace_pt = (p[3] == '+');
				} else if (FUNC2 (p, "-conf:bts:size")) {
					g->stub_features.Qbtrace_conf_bts_size = (p[FUNC4 ("-conf:bts:size")] == '+');
				} else if (FUNC2 (p, ":-conf:pt:size")) {
					g->stub_features.Qbtrace_conf_pt_size = (p[FUNC4 ("-conf:pt:size")] == '+');
				}
			} else if (FUNC2 (tok, "QNonStop")) {
				g->stub_features.QNonStop = (tok[FUNC4 ("QNonStop")] == '+');
			} else if (FUNC2 (tok, "QCatchSyscalls")) {
				g->stub_features.QCatchSyscalls = (tok[FUNC4 ("QCatchSyscalls")] == '+');
			} else if (FUNC2 (tok, "QPassSignals")) {
				g->stub_features.QPassSignals = (tok[FUNC4 ("QPassSignals")] == '+');
			} else if (FUNC2 (tok, "QStartNoAckMode")) {
				g->stub_features.QStartNoAckMode = (tok[FUNC4 ("QStartNoAckMode")] == '+');
			} else if (FUNC2 (tok, "QAgent")) {
				g->stub_features.QAgent = (tok[FUNC4 ("QAgent")] == '+');
			} else if (FUNC2 (tok, "QAllow")) {
				g->stub_features.QAllow = (tok[FUNC4 ("QAllow")] == '+');
			} else if (FUNC2 (tok, "QDisableRandomization")) {
				g->stub_features.QDisableRandomization = (tok[FUNC4 ("QDisableRandomization")] == '+');
			} else if (FUNC2 (tok, "QTBuffer:size")) {
				g->stub_features.QTBuffer_size = (tok[FUNC4 ("QTBuffer:size")] == '+');
			} else if (FUNC2 (tok, "QThreadEvents")) {
				g->stub_features.QThreadEvents = (tok[FUNC4 ("QThreadEvents")] == '+');
			} else if (FUNC2 (tok, "QThreadSuffixSupported")) {
				g->remote_type = GDB_REMOTE_TYPE_LLDB;
				g->stub_features.lldb.QThreadSuffixSupported
					= (tok[FUNC4 ("QThreadSuffixSupported")] == '+');
			} else if (FUNC2 (tok, "QListThreadsInStopReply")) {
				g->remote_type = GDB_REMOTE_TYPE_LLDB;
				g->stub_features.lldb.QListThreadsInStopReply
					= (tok[FUNC4 ("QListThreadsInStopReply")] == '+');
			}
		} else if (FUNC2 (tok, "multiprocess")) {
			g->stub_features.multiprocess = (tok[FUNC4 ("multiprocess")] == '+');
		} else if (FUNC2 (tok, "qEcho")) {
			g->remote_type = GDB_REMOTE_TYPE_LLDB;
			g->stub_features.lldb.qEcho = (tok[FUNC4 ("qEcho")] == '+');
		}
		// TODO
		tok = FUNC5 (NULL, ";");
	}
	return FUNC3 (g);
}