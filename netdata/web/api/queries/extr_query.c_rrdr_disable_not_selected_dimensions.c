
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dimensions; } ;
struct TYPE_6__ {struct TYPE_6__* next; int name; int id; } ;
struct TYPE_5__ {int* od; TYPE_3__* st; } ;
typedef int SIMPLE_PATTERN ;
typedef int RRDR_OPTIONS ;
typedef TYPE_1__ RRDR ;
typedef TYPE_2__ RRDDIM ;


 int RRDR_DIMENSION_HIDDEN ;
 int RRDR_DIMENSION_NONZERO ;
 int RRDR_DIMENSION_SELECTED ;
 int RRDR_OPTION_MATCH_IDS ;
 int RRDR_OPTION_MATCH_NAMES ;
 int RRDR_OPTION_NONZERO ;
 int SIMPLE_PATTERN_EXACT ;
 scalar_t__ likely (int) ;
 int rrdset_check_rdlock (TYPE_3__*) ;
 int * simple_pattern_create (char const*,char*,int ) ;
 int simple_pattern_free (int *) ;
 scalar_t__ simple_pattern_matches (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rrdr_disable_not_selected_dimensions(RRDR *r, RRDR_OPTIONS options, const char *dims) {
    rrdset_check_rdlock(r->st);

    if(unlikely(!dims || !*dims || (dims[0] == '*' && dims[1] == '\0'))) return;

    int match_ids = 0, match_names = 0;

    if(unlikely(options & RRDR_OPTION_MATCH_IDS))
        match_ids = 1;
    if(unlikely(options & RRDR_OPTION_MATCH_NAMES))
        match_names = 1;

    if(likely(!match_ids && !match_names))
        match_ids = match_names = 1;

    SIMPLE_PATTERN *pattern = simple_pattern_create(dims, ",|\t\r\n\f\v", SIMPLE_PATTERN_EXACT);

    RRDDIM *d;
    long c, dims_selected = 0, dims_not_hidden_not_zero = 0;
    for(c = 0, d = r->st->dimensions; d ;c++, d = d->next) {
        if( (match_ids && simple_pattern_matches(pattern, d->id))
               || (match_names && simple_pattern_matches(pattern, d->name))
                ) {
            r->od[c] |= RRDR_DIMENSION_SELECTED;
            if(unlikely(r->od[c] & RRDR_DIMENSION_HIDDEN)) r->od[c] &= ~RRDR_DIMENSION_HIDDEN;
            dims_selected++;





            if(unlikely(!(options & RRDR_OPTION_NONZERO)))
                r->od[c] |= RRDR_DIMENSION_NONZERO;


            if(likely(r->od[c] & RRDR_DIMENSION_NONZERO))
                dims_not_hidden_not_zero++;
        }
        else {
            r->od[c] |= RRDR_DIMENSION_HIDDEN;
            if(unlikely(r->od[c] & RRDR_DIMENSION_SELECTED)) r->od[c] &= ~RRDR_DIMENSION_SELECTED;
        }
    }
    simple_pattern_free(pattern);


    if(unlikely(!dims_not_hidden_not_zero && dims_selected)) {




        for(c = 0, d = r->st->dimensions; d ;c++, d = d->next)
            if(unlikely(r->od[c] & RRDR_DIMENSION_SELECTED))
                r->od[c] |= RRDR_DIMENSION_NONZERO;
    }
}
