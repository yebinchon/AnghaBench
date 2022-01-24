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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(char *str, char **words, int max_words, int (*custom_isspace)(char)) {
    char *s = str, quote = 0;
    int i = 0, j;

    // skip all white space
    while(FUNC1(custom_isspace(*s))) s++;

    // check for quote
    if(FUNC1(*s == '\'' || *s == '"')) {
        quote = *s; // remember the quote
        s++;        // skip the quote
    }

    // store the first word
    words[i++] = s;

    // while we have something
    while(FUNC0(*s)) {
        // if it is escape
        if(FUNC1(*s == '\\' && s[1])) {
            s += 2;
            continue;
        }

        // if it is quote
        else if(FUNC1(*s == quote)) {
            quote = 0;
            *s = ' ';
            continue;
        }

        // if it is a space
        else if(FUNC1(quote == 0 && custom_isspace(*s))) {

            // terminate the word
            *s++ = '\0';

            // skip all white space
            while(FUNC0(custom_isspace(*s))) s++;

            // check for quote
            if(FUNC1(*s == '\'' || *s == '"')) {
                quote = *s; // remember the quote
                s++;        // skip the quote
            }

            // if we reached the end, stop
            if(FUNC1(!*s)) break;

            // store the next word
            if(FUNC0(i < max_words)) words[i++] = s;
            else break;
        }

        // anything else
        else s++;
    }

    // terminate the words
    j = i;
    while(FUNC0(j < max_words)) words[j++] = NULL;

    return i;
}