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
typedef  int /*<<< orphan*/  fe_modulation_t ;

/* Variables and functions */
 int /*<<< orphan*/  APSK_16 ; 
 int /*<<< orphan*/  APSK_32 ; 
 int /*<<< orphan*/  DQPSK ; 
 int /*<<< orphan*/  PSK_8 ; 
 int /*<<< orphan*/  QAM_128 ; 
 int /*<<< orphan*/  QAM_16 ; 
 int /*<<< orphan*/  QAM_256 ; 
 int /*<<< orphan*/  QAM_32 ; 
 int /*<<< orphan*/  QAM_64 ; 
 int /*<<< orphan*/  QAM_AUTO ; 
 int /*<<< orphan*/  QPSK ; 
 int /*<<< orphan*/  VSB_16 ; 
 int /*<<< orphan*/  VSB_8 ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static fe_modulation_t FUNC1(const char** modstring) {
    if (!FUNC0(*modstring, "16", 2)) {
        (*modstring)+=2;
        return QAM_16;
    } else if (!FUNC0(*modstring, "32", 2)) {
        (*modstring)+=2;
        return QAM_32;
    } else if (!FUNC0(*modstring, "64", 2)) {
        (*modstring)+=2;
        return QAM_64;
    } else if (!FUNC0(*modstring, "128", 3)) {
        (*modstring)+=3;
        return QAM_128;
    } else if (!FUNC0(*modstring, "256", 3)) {
        (*modstring)+=3;
        return QAM_256;
    } else if (!FUNC0(*modstring, "998", 3)) {
        (*modstring)+=3;
        return QAM_AUTO;
    } else if (!FUNC0(*modstring, "2", 1)) {
        (*modstring)++;
        return QPSK;
    } else if (!FUNC0(*modstring, "5", 1)) {
        (*modstring)++;
        return PSK_8;
    } else if (!FUNC0(*modstring, "6", 1)) {
        (*modstring)++;
        return APSK_16;
    } else if (!FUNC0(*modstring, "7", 1)) {
        (*modstring)++;
        return APSK_32;
    } else if (!FUNC0(*modstring, "10", 2)) {
        (*modstring)+=2;
        return VSB_8;
    } else if (!FUNC0(*modstring, "11", 2)) {
        (*modstring)+=2;
        return VSB_16;
    } else if (!FUNC0(*modstring, "12", 2)) {
        (*modstring)+=2;
        return DQPSK;
    } else {
        return QAM_AUTO;
    }
}