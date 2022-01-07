
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct state {int dummy; } ;


 struct state _state ;
 int memset (struct state*,int ,int) ;

__attribute__((used)) static inline struct state *get_state(void) {
 memset (&_state, 0, sizeof (struct state));
 return &_state;
}
