
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* compar ) (TYPE_2__*,TYPE_2__*) ;int root; } ;
typedef TYPE_1__ avl_tree ;
struct TYPE_9__ {int avl_balance; struct TYPE_9__** avl_link; } ;
typedef TYPE_2__ avl ;


 int AVL_MAX_HEIGHT ;
 int stub1 (TYPE_2__*,TYPE_2__*) ;

avl *avl_remove(avl_tree *tree, avl *item) {

    avl *pa[AVL_MAX_HEIGHT];
    unsigned char da[AVL_MAX_HEIGHT];
    int k;

    avl *p;
    int cmp;



    k = 0;
    p = (avl *) &tree->root;
    for(cmp = -1; cmp != 0; cmp = tree->compar(item, p)) {
        unsigned char dir = (unsigned char)(cmp > 0);

        pa[k] = p;
        da[k++] = dir;

        p = p->avl_link[dir];
        if(p == ((void*)0)) return ((void*)0);
    }

    item = p;

    if (p->avl_link[1] == ((void*)0))
        pa[k - 1]->avl_link[da[k - 1]] = p->avl_link[0];
    else {
        avl *r = p->avl_link[1];
        if (r->avl_link[0] == ((void*)0)) {
            r->avl_link[0] = p->avl_link[0];
            r->avl_balance = p->avl_balance;
            pa[k - 1]->avl_link[da[k - 1]] = r;
            da[k] = 1;
            pa[k++] = r;
        }
        else {
            avl *s;
            int j = k++;

            for (;;) {
                da[k] = 0;
                pa[k++] = r;
                s = r->avl_link[0];
                if (s->avl_link[0] == ((void*)0)) break;

                r = s;
            }

            s->avl_link[0] = p->avl_link[0];
            r->avl_link[0] = s->avl_link[1];
            s->avl_link[1] = p->avl_link[1];
            s->avl_balance = p->avl_balance;

            pa[j - 1]->avl_link[da[j - 1]] = s;
            da[j] = 1;
            pa[j] = s;
        }
    }


    while (--k > 0) {
        avl *y = pa[k];

        if (da[k] == 0) {
            y->avl_balance++;
            if (y->avl_balance == +1) break;
            else if (y->avl_balance == +2) {
                avl *x = y->avl_link[1];
                if (x->avl_balance == -1) {
                    avl *w;

                    w = x->avl_link[0];
                    x->avl_link[0] = w->avl_link[1];
                    w->avl_link[1] = x;
                    y->avl_link[1] = w->avl_link[0];
                    w->avl_link[0] = y;
                    if (w->avl_balance == +1)
                        x->avl_balance = 0, y->avl_balance = -1;
                    else if (w->avl_balance == 0)
                        x->avl_balance = y->avl_balance = 0;
                    else
                        x->avl_balance = +1, y->avl_balance = 0;
                    w->avl_balance = 0;
                    pa[k - 1]->avl_link[da[k - 1]] = w;
                }
                else {
                    y->avl_link[1] = x->avl_link[0];
                    x->avl_link[0] = y;
                    pa[k - 1]->avl_link[da[k - 1]] = x;
                    if (x->avl_balance == 0) {
                        x->avl_balance = -1;
                        y->avl_balance = +1;
                        break;
                    }
                    else x->avl_balance = y->avl_balance = 0;
                }
            }
        }
        else
        {
            y->avl_balance--;
            if (y->avl_balance == -1) break;
            else if (y->avl_balance == -2) {
                avl *x = y->avl_link[0];
                if (x->avl_balance == +1) {
                    avl *w;

                    w = x->avl_link[1];
                    x->avl_link[1] = w->avl_link[0];
                    w->avl_link[0] = x;
                    y->avl_link[0] = w->avl_link[1];
                    w->avl_link[1] = y;
                    if (w->avl_balance == -1)
                        x->avl_balance = 0, y->avl_balance = +1;
                    else if (w->avl_balance == 0)
                        x->avl_balance = y->avl_balance = 0;
                    else
                        x->avl_balance = -1, y->avl_balance = 0;
                    w->avl_balance = 0;
                    pa[k - 1]->avl_link[da[k - 1]] = w;
                }
                else {
                    y->avl_link[0] = x->avl_link[1];
                    x->avl_link[1] = y;
                    pa[k - 1]->avl_link[da[k - 1]] = x;
                    if (x->avl_balance == 0) {
                        x->avl_balance = +1;
                        y->avl_balance = -1;
                        break;
                    }
                    else x->avl_balance = y->avl_balance = 0;
                }
            }
        }
    }



    return item;
}
