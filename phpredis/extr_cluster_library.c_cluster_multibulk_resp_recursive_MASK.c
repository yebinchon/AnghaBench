#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; long len; long integer; size_t elements; struct TYPE_3__** element; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ clusterReply ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
#define  TYPE_BULK 132 
#define  TYPE_ERR 131 
#define  TYPE_INT 130 
#define  TYPE_LINE 129 
#define  TYPE_MULTIBULK 128 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,long long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long long) ; 

__attribute__((used)) static void
FUNC5(RedisSock *sock, size_t elements,
                                 clusterReply **element, int status_strings,
                                 int *err)
{
    int i;
    size_t sz;
    clusterReply *r;
    long len;
    char buf[1024];

    for (i = 0; i < elements; i++) {
        r = element[i] = FUNC0(1, sizeof(clusterReply));

        // Bomb out, flag error condition on a communication failure
        if (FUNC2(sock, &r->type, &len) < 0) {
            *err = 1;
            return;
        }

        /* Set our reply len */
        r->len = len;

        switch(r->type) {
            case TYPE_ERR:
            case TYPE_LINE:
                if (FUNC3(sock,buf,sizeof(buf),&sz) < 0) {
                    *err = 1;
                    return;
                }
                r->len = (long long)sz;
                if (status_strings) r->str = FUNC1(buf, r->len);
                break;
            case TYPE_INT:
                r->integer = len;
                break;
            case TYPE_BULK:
                if (r->len >= 0) {
                    r->str = FUNC4(sock,r->len);
                    if (!r->str) {
                        *err = 1;
                        return;
                    }
                }
                break;
            case TYPE_MULTIBULK:
                if (r->len >= 0) {
                    r->elements = r->len;
                    if (r->len > 0) {
                        r->element = FUNC0(r->len,sizeof(clusterReply*));
                        FUNC5(sock, r->elements, r->element,
                            status_strings, err);
                    }
                    if (*err) return;
                }
                break;
            default:
                *err = 1;
                return;
        }
    }
}