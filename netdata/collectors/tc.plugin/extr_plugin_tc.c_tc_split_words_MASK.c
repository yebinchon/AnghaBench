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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(char *str, char **words, int max_words) {
    char *s = str;
    int i = 0;

    // skip all white space
    while(FUNC0(*s)) s++;

    // store the first word
    words[i++] = s;

    // while we have something
    while(*s) {
        // if it is a space
        if(FUNC1(FUNC0(*s))) {

            // terminate the word
            *s++ = '\0';

            // skip all white space
            while(FUNC0(*s)) s++;

            // if we reached the end, stop
            if(!*s) break;

            // store the next word
            if(i < max_words) words[i++] = s;
            else break;
        }
        else s++;
    }

    // terminate the words
    while(i < max_words) words[i++] = NULL;
}