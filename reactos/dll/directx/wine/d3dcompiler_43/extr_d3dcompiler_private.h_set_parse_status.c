
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum parse_status { ____Placeholder_parse_status } parse_status ;


 int PARSE_ERR ;
 int PARSE_SUCCESS ;
 int PARSE_WARN ;

__attribute__((used)) static inline void set_parse_status(enum parse_status *current, enum parse_status update)
{
    if (update == PARSE_ERR)
        *current = PARSE_ERR;
    else if (update == PARSE_WARN && *current == PARSE_SUCCESS)
        *current = PARSE_WARN;
}
