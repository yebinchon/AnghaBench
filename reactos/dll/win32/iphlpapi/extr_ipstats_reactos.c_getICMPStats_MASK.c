#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {void* dwAddrMaskReps; void* dwAddrMasks; void* dwTimestampReps; void* dwTimestamps; void* dwEchoReps; void* dwRedirects; void* dwSrcQuenchs; void* dwParmProbs; void* dwTimeExcds; void* dwDestUnreachs; void* dwErrors; void* dwMsgs; } ;
struct TYPE_7__ {void* dwAddrMaskReps; void* dwAddrMasks; void* dwTimestampReps; void* dwTimestamps; void* dwEchoReps; void* dwRedirects; void* dwSrcQuenchs; void* dwParmProbs; void* dwTimeExcds; void* dwDestUnreachs; void* dwErrors; void* dwMsgs; } ;
struct TYPE_9__ {TYPE_2__ icmpOutStats; TYPE_1__ icmpInStats; } ;
struct TYPE_10__ {TYPE_3__ stats; } ;
typedef  TYPE_4__ MIB_ICMP ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 
 void* FUNC5 (char*,char**,int) ; 

DWORD FUNC6(MIB_ICMP *stats)
{
  FILE *fp;

  if (!stats)
    return ERROR_INVALID_PARAMETER;

  FUNC3(stats, 0, sizeof(MIB_ICMP));
  /* get most of these stats from /proc/net/snmp, no error if can't */
  fp = FUNC2("/proc/net/snmp", "r");
  if (fp) {
    const char hdr[] = "Icmp:";
    char buf[512] = { 0 }, *ptr;

    do {
      ptr = FUNC1(buf, sizeof(buf), fp);
    } while (ptr && FUNC4(buf, hdr, sizeof(hdr) - 1));
    if (ptr) {
      /* last line was a header, get another */
      ptr = FUNC1(buf, sizeof(buf), fp);
      if (ptr && FUNC4(buf, hdr, sizeof(hdr) - 1) == 0) {
        char *endPtr;

        ptr += sizeof(hdr);
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwMsgs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwErrors = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwDestUnreachs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwTimeExcds = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwParmProbs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwSrcQuenchs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwRedirects = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwEchoReps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwTimestamps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwTimestampReps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwAddrMasks = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpInStats.dwAddrMaskReps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwMsgs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwErrors = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwDestUnreachs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwTimeExcds = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwParmProbs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwSrcQuenchs = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwRedirects = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwEchoReps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwTimestamps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwTimestampReps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwAddrMasks = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
        if (ptr && *ptr) {
          stats->stats.icmpOutStats.dwAddrMaskReps = FUNC5(ptr, &endPtr, 10);
          ptr = endPtr;
        }
      }
    }
    FUNC0(fp);
  }
  return NO_ERROR;
}