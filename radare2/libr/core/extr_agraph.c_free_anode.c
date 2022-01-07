
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* body; struct TYPE_4__* title; } ;
typedef TYPE_1__ RANode ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void free_anode(RANode *n) {
 free (n->title);
 free (n->body);
 free (n);
}
