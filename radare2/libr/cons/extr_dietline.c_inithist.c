
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; char** data; } ;
struct TYPE_4__ {TYPE_1__ history; } ;


 TYPE_2__ I ;
 int R_LINE_HISTSIZE ;
 int ZERO_FILL (TYPE_1__) ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static int inithist() {
 ZERO_FILL (I.history);
 if ((I.history.size + 1024) * sizeof (char *) < I.history.size) {
  return 0;
 }
 I.history.data = (char **) calloc ((I.history.size + 1024), sizeof(char *));
 if (!I.history.data) {
  return 0;
 }
 I.history.size = R_LINE_HISTSIZE;
 return 1;
}
