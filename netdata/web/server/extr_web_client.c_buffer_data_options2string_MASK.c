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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int RRDR_OPTION_ABSOLUTE ; 
 int RRDR_OPTION_GOOGLE_JSON ; 
 int RRDR_OPTION_JSON_WRAP ; 
 int RRDR_OPTION_MILLISECONDS ; 
 int RRDR_OPTION_MIN2MAX ; 
 int RRDR_OPTION_NONZERO ; 
 int RRDR_OPTION_NOT_ALIGNED ; 
 int RRDR_OPTION_NULL2ZERO ; 
 int RRDR_OPTION_OBJECTSROWS ; 
 int RRDR_OPTION_PERCENTAGE ; 
 int RRDR_OPTION_REVERSED ; 
 int RRDR_OPTION_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

void FUNC1(BUFFER *wb, uint32_t options) {
    int count = 0;

    if(options & RRDR_OPTION_NONZERO) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "nonzero");
    }

    if(options & RRDR_OPTION_REVERSED) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "flip");
    }

    if(options & RRDR_OPTION_JSON_WRAP) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "jsonwrap");
    }

    if(options & RRDR_OPTION_MIN2MAX) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "min2max");
    }

    if(options & RRDR_OPTION_MILLISECONDS) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "ms");
    }

    if(options & RRDR_OPTION_ABSOLUTE) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "absolute");
    }

    if(options & RRDR_OPTION_SECONDS) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "seconds");
    }

    if(options & RRDR_OPTION_NULL2ZERO) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "null2zero");
    }

    if(options & RRDR_OPTION_OBJECTSROWS) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "objectrows");
    }

    if(options & RRDR_OPTION_GOOGLE_JSON) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "google_json");
    }

    if(options & RRDR_OPTION_PERCENTAGE) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "percentage");
    }

    if(options & RRDR_OPTION_NOT_ALIGNED) {
        if(count++) FUNC0(wb, " ");
        FUNC0(wb, "unaligned");
    }
}