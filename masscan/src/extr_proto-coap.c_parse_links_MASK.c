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
struct CoapLink {unsigned int parms_offset; unsigned int link_offset; int /*<<< orphan*/  parms_length; int /*<<< orphan*/  link_length; } ;

/* Variables and functions */
 struct CoapLink* FUNC0 (int,int) ; 
 struct CoapLink* FUNC1 (struct CoapLink*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static struct CoapLink *
FUNC6(const unsigned char *px, unsigned offset, unsigned length, size_t *r_count)
{
    struct CoapLink *l;
    struct CoapLink *links;
    unsigned count = 0;
    enum {
        LINK_BEGIN=0,
        LINK_VALUE,
        LINK_END,
        PARM_BEGIN,
        PARM_NAME_BEGIN,
        PARM_VALUE_BEGIN,
        PARM_QUOTED,
        PARM_QUOTED_ESCAPE,
        PARM_NAME,
        PARM_VALUE,
        INVALID
    } state = LINK_BEGIN;
    
    /* For selftesting purposes, we pass in nul-terminated strings,
     * indicated by a length of (~0) */
    if (length == ~0)
        length = (unsigned)FUNC5((const char *)px);
    
    /* Allocate space for at least one result */
    links = FUNC0(1, sizeof(*links));
    l = &links[0];
    l->parms_offset = offset;
    l->link_offset = offset;
    
    for (; offset < length; offset++)
    switch (state) {
        case INVALID:
            offset = length;
            break;
        case LINK_BEGIN:
            /* Ignore leading whitespace */
            if (FUNC4(px[offset]))
                continue;
            
            /* Links must start with "<" character */
            if (px[offset] != '<') {
                state = INVALID;
                break;
            }
            
            
            /* Reserve space for next link */
            links = FUNC1(links, ++count+1, sizeof(*links));
            links[count].link_offset = length; /* indicate end-of-list by pointing to end-of-input */
            links[count].link_length = 0;
            links[count].parms_offset = length;
            links[count].parms_length = 0;
            
            /* Grab a pointer to this <link> */
            l = &links[count-1];
            l->link_offset = offset+1;
            l->parms_offset = l->link_offset;
            
            state = LINK_VALUE;
            break;
        case LINK_VALUE:
            if (px[offset] == '>') {
                /* End of the link, it may be followed by parameters */
                state = LINK_END;
            } else {
                l->link_length++;
            }
            break;
        case LINK_END:
            l->parms_offset = offset+1;
            l->parms_length = 0;
            if (FUNC4(px[offset])) {
                continue;
            } else if (px[offset] == ',') {
                /* next link */
                state = LINK_BEGIN;
            } else if (px[offset] == ';') {
                state = PARM_NAME_BEGIN;
            } else {
                state = INVALID;
            }
            break;
        case PARM_BEGIN:
            if (FUNC4(px[offset])) {
                continue;
            } else if (px[offset] == ',') {
                /* next link */
                l->parms_length = offset - l->parms_offset;
                state = LINK_BEGIN;
            } else if (px[offset] == ';') {
                state = PARM_NAME_BEGIN;
            } else {
                state = INVALID;
            }
            break;
        case PARM_NAME_BEGIN:
            if (FUNC4(px[offset]))
                continue;
            if (!FUNC3(px[offset]))
                state = INVALID;
            else
                state = PARM_NAME;
            break;
        case PARM_NAME:
            if (FUNC4(px[offset])) {
                continue;
            } else if (px[offset] == '=') {
                state = PARM_VALUE_BEGIN;
            } else if (!FUNC3(px[offset])) {
                state = INVALID;
            }
            break;
        case PARM_VALUE_BEGIN:
            if (FUNC4(px[offset]))
                continue;
            else if (px[offset] == '\"') {
                state = PARM_QUOTED;
            } else if (offset == ';') {
                state = PARM_NAME_BEGIN;
            } else if (px[offset] == ',') {
                l->parms_length = offset - l->parms_offset;
                state = LINK_BEGIN;
            } else
                state = PARM_VALUE;
            break;
        case PARM_VALUE:
            if (FUNC4(px[offset]))
                continue;
            else if (px[offset] == ';')
                state = PARM_NAME_BEGIN;
            else if (px[offset] == ',') {
                l->parms_length = offset - l->parms_offset;
                state = LINK_BEGIN;
            } else {
                ; /* do nothing */
            }
            break;
        case PARM_QUOTED:
            /* RFC2616:
             quoted-string  = ( <"> *(qdtext | quoted-pair ) <"> )
             qdtext         = <any TEXT except <">>
             quoted-pair    = "\" CHAR
             */
            if (px[offset] == '\\') {
                state = PARM_QUOTED_ESCAPE;
            } else if (px[offset] == '\"') {
                state = PARM_VALUE;
            }
            break;
        case PARM_QUOTED_ESCAPE:
            state = PARM_QUOTED;
            break;
        default:
            FUNC2(stderr, "invalid state\n");
            state = INVALID;
            break;
                        
    }

    /* Return an array of links and a count of the number of links */
    *r_count = count;
    return links;
}