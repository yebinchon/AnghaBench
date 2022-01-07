
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ RIOBfdbg ;



__attribute__((used)) static inline int getmalfd (RIOBfdbg *mal) {
 return 0xffff & (int)(size_t)mal->buf;
}
