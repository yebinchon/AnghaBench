
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_flags; TYPE_1__** box; int IsMarkQ; } ;
struct TYPE_4__ {int FlagType; } ;
typedef TYPE_2__ BOARD ;


 int COMPLETE ;

 void* NORMAL ;


__attribute__((used)) static void AddFlag( BOARD *p_board, unsigned col, unsigned row )
{
    if( p_board->box[col][row].FlagType != COMPLETE ) {
        switch( p_board->box[col][row].FlagType ) {
        case 129:
            if( p_board->IsMarkQ )
                p_board->box[col][row].FlagType = 128;
            else
                p_board->box[col][row].FlagType = NORMAL;
            p_board->num_flags--;
            break;

        case 128:
            p_board->box[col][row].FlagType = NORMAL;
            break;

        default:
            p_board->box[col][row].FlagType = 129;
            p_board->num_flags++;
        }
    }
}
