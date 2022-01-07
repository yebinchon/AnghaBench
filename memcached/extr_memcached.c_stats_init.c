
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stats_state {int dummy; } ;
struct stats {int dummy; } ;
struct TYPE_4__ {int accepting_conns; } ;


 scalar_t__ ITEM_UPDATE_INTERVAL ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ process_started ;
 TYPE_1__ stats ;
 int stats_prefix_init () ;
 TYPE_1__ stats_state ;
 scalar_t__ time (int ) ;

__attribute__((used)) static void stats_init(void) {
    memset(&stats, 0, sizeof(struct stats));
    memset(&stats_state, 0, sizeof(struct stats_state));
    stats_state.accepting_conns = 1;





    process_started = time(0) - ITEM_UPDATE_INTERVAL - 2;
    stats_prefix_init();
}
